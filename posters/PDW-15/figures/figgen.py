

import matplotlib.pyplot as plt
import networkx as nx
import scipy.constants

w=5
cut = 1.06

nodedict = {"A":(25,35),"B":(30,30),"C":(25,25),"D":(35,25),"E":(35,35)}
direct = {'type':'Direct', 'color':'g', 'weight':4}
indirect = {'type':'Indirect', 'color':'r', 'weight':2}
recommend = {'type':'Recommendation', 'color':'y', 'weight':1}
edgelist = [("A","B", direct),
            ("A","C", direct),
            ("B","C", recommend),
            ("A","C", recommend),
            ("B","D", indirect),
            ("B","E", indirect),
            ]

G = nx.DiGraph()
G.add_nodes_from(nodedict.keys())
G.add_edges_from(edgelist, alpha = 0.5)
pos = nx.spring_layout(G)
for n,p in nodedict.iteritems():
    G.node[n]['pos'] = p
nodelist = [ '#90EE90' if n == 'A' else 'w' for n in G.nodes() ]
nodealpha = [ 0.1 if n == 'A' else 1.0 for n in G.nodes() ]
fig, ax = plt.subplots(1, 1, figsize=(w, w / scipy.constants.golden))
nx.draw_networkx(G, nodedict, arrows=True, ax=ax,
        cmap = plt.get_cmap('jet'), node_size = 2000, width=4, 
        node_color=nodelist, edge_color=[e[2]['color'] for e in G.edges(data=True)],
        alpha = 1.0, font_size = 20)
nx.draw_networkx_edge_labels(G,nodedict,{(k1,k2):e['type'] for k1,k2,e in G.edges_iter(data=True)},
                             font_size=10)

ax.set_axis_off()

xmax= cut*max(xx for xx,yy in nodedict.values())
ymax= cut*max(yy for xx,yy in nodedict.values())
xmin= (1/cut)*min(xx for xx,yy in nodedict.values())
ymin= (1/cut)*min(yy for xx,yy in nodedict.values())
ax.set_xlim(xmin,xmax)
ax.set_ylim(ymin,ymax)
fig.tight_layout(pad=0.0)
fig.subplots_adjust(left=0.0, right=1, top=1, bottom=0)

fig.savefig('/home/bolster/src/thesis/posters/PDW-15/figures/node_relationships.png', bbox_inches="tight")
