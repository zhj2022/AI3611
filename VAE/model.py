import torch
from torch import nn
from torch.nn import functional as F

class VAE(nn.Module):
    def __init__(self, in_dim=784, hid_dim=400, lat_dim=20, en_layers=1):
        super(VAE, self).__init__()
        assert en_layers >= 1, "encoder layers must be as least 1"
        self.in_dim, self.hid_dim, self.lat_dim = in_dim, hid_dim, lat_dim
        modules = list()
        modules.append(nn.Linear(in_dim. hid_dim))
        modules.append(nn.ReLU())
        for i in range(en_layers-1):
            modules.append(nn.Linear(hid_dim, hid_dim))
            modules.append(nn.ReLU())

        self.encoder = nn.Sequential(*modules)
        self.mu = nn.Linear(hid_dim, lat_dim)
        self.logvar2 = nn.Linear(hid_dim, lat_dim)
        decoder_list = list()
        decoder_list.append(nn.Linear(lat_dim, hid_dim))
        decoder_list.append(nn.ReLU())
        decoder_list.append(nn.Linear(hid_dim, in_dim))
        decoder_list.append(nn.Sigmoid())
        self.decoder = nn.Sequential(*decoder_list)

    def reparameterize(self, mu, logvar2):
        var = torch.exp(logvar2 * .5)
        z = torch.randn(mu.shape).to(mu.device)
        return mu + z * var

    def forward(self, x):
        h = self.encoder(x.view(-1, self.in_dim))
        mu, logvar2 = self.mu(h), self.logvar2(h)

        z = self.reparameterize(mu, logvar2)
        return self.decoder(z), mu, logvar2, z # 输出tuple中的第一个数为拉平后的重构图片

    def generate(self, z):
        return self.decoder(z) # 输入是一个lat_dim维的向量，输出是一个784维的向量，可视化时要reshape成28*28