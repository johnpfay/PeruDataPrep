---
Title: Demo Notes
Author: John Fay
Date: Fall 2020
---

# Intro/Objectives

* Once we have cleaned and organized the data file, what do we do with them -> Load them into ArcGIS Online
* Demonstration on what is ArcGIS online and how it serves this project. 
* See what it can do, explain some points as I go, and summarize/answer questions in the end. 



# Getting data into ArcGIS Online

* #### Display the file we want to upload

  * `Hg_Hair_Studies.csv`

* #### Log into the system 

  * I'm using Duke's organization platform; Duke has a site license for ESRI's products
  * Any organization can license their own organizational portal, served via ESRI's cloud
  * Or you can set up your own hardware to serve as an ArcGIS Online portal

* #### Upload the data

  * Navigate to content tab
  * Create a folder into which the data will reside
  * Add item --> From your computer
  * Browse to CSV; edit title, add tags
  * Publish as a hosted feature layer -> Creates a spatially enabled dataset

* #### View results:

  * CSV file - the raw data
  * Hosted feature layer - the spatially enabled dataset

* #### Explore feature layer, what's next:

  * Add metadata
  * Create visualization
  * Share 

---

# What does it mean to host data in ArcGIS Online?

* #### Using the data within ArcGIS Online -- more later

* #### Accessing data from Desktop ArcGIS

  * Open ArcGIS Pro - license is connected to ArcGIS Online Account
  * Navigate to Portal: There's the data
  * Add to a map, and analyze the data

* #### Accessing data from coding environment

  * Reveal object id and REST endpoint
  * Open Jupyter notebook & run

---

# What you can do in ArcGIS online

No additional software required, just a web browser (and access to the data)

* #### View data in a map

  * Return to ArcGIS Online, navigate to Peru Demo folder
  * Open content page for Suspended Particles
  * Click Open in Map Viewer
  * Click on feature, show attribute table, filter records, create heatmap, change basemap

* #### Compare with other datasets

  * Add another dataset I've added to our site: Sediment analysis
  * Add data from living atlas: Vibrant basemap; Firefly
  * Add boundaries: Search for peru
  * Add data from ArcGIS Online: Peru metalogenetico
    * Examine other datasets from [autonomoosi02@ingemmet.gob.pe_ingemmet_peru](https://dukeuniv.maps.arcgis.com/home/user.html?user=autonomoosi02@ingemmet.gob.pe_ingemmet_peru)
    * Filter on gold mines alone

* #### Analysis

  * Open existing Peru Demo Map
  * Show mine locations: the Mine density product
  * Compare with other datasets: Visual patterns?
  * Outlier analysis:
    * HH - statistically high Hg cluster
    * HL - high outlier in a low cluster
    * LH - low outlier in a high cluster
    * LL - statistically low cluster
  * Filter high clusters

* #### Additional tools: Insights

  * Open Insights page https://insights.arcgis.com/#/edit/3fb42e7ce19947d3a3fefb574c1a68ba
  
    
