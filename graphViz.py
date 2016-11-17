import matplotlib.pyplot as plt
import networkx as nx
import graph

def createGraphViz():
    G = nx.MultiGraph()
    
    users = graph.getAllUsers()
    prints = graph.getAllPrints()
    orders = graph.getAllOrders()
    for user in users:
        G.add_node(user['id'], label=user['properties']['username'][0]['value'], type='user')
    for p in prints:
        G.add_node(p['id'] , label=p['properties']['name'][0]['value'], type='print')
    for order in orders:
        G.add_edge(order['outV'], order['inV'], key=order['properties']['date'], label=order['properties']['date'])

    pos = nx.spring_layout(G)

    node_color = [];
    for n in G.nodes(data=True):
        if n[1]['type'] == 'user':
            node_color.append('pink')
            
        elif n[1]['type'] == 'print':
            node_color.append('yellow')
            
    nx.draw(G, pos, node_color=node_color, node_size=4000, alpha=0.5)
    node_labels = nx.get_node_attributes(G, 'label')
    nx.draw_networkx_labels(G, pos, labels = node_labels)
    edge_labels = nx.get_edge_attributes(G, 'label')
    print 'labels'
    print edge_labels
    print 'edges'
    for edge in G.edges(data=True):
        print edge
    print len(edge_labels)
    print len(G.edges())
    nx.draw_networkx_edge_labels(G, pos, alpha = 0.5, font_size=6)


    
    plt.axis('off')
    plt.savefig('graphViz.png')
    plt.clf()