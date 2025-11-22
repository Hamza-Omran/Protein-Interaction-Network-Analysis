# Social Network Analysis on Protein Interactions in the Human Body - 2023

## Academic Context
This project was developed as part of the "Intro to Social Networks" course (2023).

## Project Overview

This project applies social network analysis techniques to study protein interaction networks in the human body, with a focus on identifying critical proteins involved in antiviral responses.

## Aim

To determine the most important proteins in the human body through centrality analysis and to visualize their interaction patterns within the protein network. The analysis focuses on understanding which proteins play crucial roles in fighting viruses.

## Hypothesis

By applying node centrality measures (degree centrality, betweenness centrality, closeness centrality, and eigenvector centrality), we can identify key proteins that serve as critical nodes in the biological network.

## Methodology

The analysis employs four types of centrality measures:
- **Degree Centrality**: Measures the number of direct connections a protein has
- **Betweenness Centrality**: Identifies proteins that act as bridges between other proteins
- **Closeness Centrality**: Determines how quickly a protein can interact with all other proteins in the network
- **Eigenvector Centrality**: Assesses the influence of a protein based on the importance of its connections

## Tools and Technologies

### Cytoscape
- Visualization of the protein interaction network
- Network subsetting capabilities for handling large datasets
- User-friendly interface for exploratory analysis
- Calculation of basic centrality measures

### R Studio
- Verification and validation of centrality calculations
- Computation of eigenvector centrality
- Data processing and statistical analysis
- Implementation in RFILE.R

### Microsoft Excel
- Data viewing and preliminary exploration
- Result presentation in accessible format

## Data Structure

### Input Files
- `kras network.xml` - Primary network data
- `kras network.xgmml` - Extended graph markup format
- `kras network.graphml` - Graph modeling format
- `kras network default network.csv` - Edge list
- `human node.csv` - Node attributes and properties

### Data Fields
The node dataset includes:
- Network topology metrics (degree, betweenness, closeness, eigenvector)
- Biological annotations (species, interactor type, protein names)
- Systematic identifiers and synonyms

## Project Workflow

1. **Data Import**: Load XML network files into Cytoscape
2. **Network Visualization**: Examine the overall structure and identify patterns
3. **Subset Selection**: Extract relevant subnetworks from the massive dataset
4. **Centrality Calculation**: Compute all four centrality measures
5. **Validation**: Verify results using R Studio
6. **Analysis**: Interpret centrality scores to identify key proteins
7. **Documentation**: Export results to Excel for reporting

## Key Findings

The analysis reveals:
- Critical hub proteins with high degree centrality
- Bridge proteins identified through betweenness centrality
- Proteins with rapid network-wide influence (high closeness)
- Influential proteins based on their network position (eigenvector)

## File Organization
/Intro to Social Project/
├── RFILE.R # R analysis scripts
├── data/
│ ├── kras network.xml # Network data
│ ├── kras network.xgmml # Alternative format
│ ├── kras network.graphml # Graph format
│ ├── kras network default network.csv # Edge data
│ ├── human node.csv # Node attributes
│ └── new.csv # Processed results
└── social proejct/ # Project directory


## Usage

### Cytoscape Analysis
1. Open Cytoscape application
2. Import network file (XML/XGMML/GraphML)
3. Apply layout algorithms for visualization
4. Calculate network statistics using built-in tools
5. Export results for further analysis

### R Analysis
1. Open RFILE.R in R Studio
2. Load required libraries (igraph, network analysis packages)
3. Import node and edge data
4. Run centrality calculations
5. Export results to CSV format

## Technical Specifications

- **Network Size**: Large-scale protein interaction network
- **Node Types**: Proteins, genes, ribonucleic acids
- **Species Focus**: Homo sapiens (Human)
- **Data Source**: Protein interaction databases

## Limitations

- Eigenvector centrality requires more computational resources
- Large network size necessitates subsetting for detailed analysis
- Some proteins lack complete annotation data

## Future Directions

- Integration of additional biological databases
- Temporal analysis of protein interactions
- Disease-specific network analysis
- Functional enrichment analysis of hub proteins

## Contributors

Project developed as part of Introduction to Social Networks course
