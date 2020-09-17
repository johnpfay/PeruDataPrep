---
Title: Demo Notes
Author: John Fay
Date: Fall 2020
---

[TOC]



## Questions/Priorities

* **Getting data into AGOL**
* **Managing data in AGOL**
  * Metadata | editing | visualizing | sharing
* **Creating a Map in AGOL**
  * Symbolizing
  * Finding and adding additional layers
  * Visualizations
* **Analyzing data in AGOL**
  * Outlier analysis
* **Working with data in Python**
* **Working with data in Insights**



## 1. Loading csv files to ArcGIS Online (AGOL)

* Log into AGOL, navigate to Content tab
* Create a folder (`Peru Demo`)
* Select **Add Item**
* Add csv file from computer:
  * Assign a title: `Suspended Particles`
  * Assign categories: `People/Health`, `People/At risk`
  * Add tags: `Peru Demo`
  * Publish as a hosted layer...
  * Locate features by Coordinates
  * Select X and Y fields
  * Add item...

> This will add two new items to the Peru Demo folder: a **CSV file** and a **Feature Layer (hosted)**. The CSV file can only be downloaded, but the published feature layer can be use in online analysis. Additional **metadata** can - and should - be added to these items. These items can also be shared with defined groups, with the organization, or with everyone. 
>
> Each item in AGOL is assigned a unique **item ID**. This appears in the **item's content URL** when you browse to it. For example, the item at  
> <https://dukeuniv.maps.arcgis.com/home/item.html?id=c0f30d11aadc4029aa6e79f77edc2b18> has the item ID of   
> `c0f30d11aadc4029aa6e79f77edc2b18`. This is useful when addressing the item in a coding environment. 
>
> Feature layers (and some other AGOL items) are also associated with a **service URL**, which can be found at the bottom left of it's content URL. Our feature layer's service URL is <https://services1.arcgis.com/XBhYkoXKJCRHbe7M/arcgis/rest/services/Suspended_Particles/FeatureServer>. If the item is not shared, a token is required to view it via a web browser. 



### 2. Working with a Feature Layer in AGOL

#### Add Metadata to your Feature Layer

* Add a brief summary and description for your dataset
* Set any Terms of Use
* Manage Tags and Credits

#### Exploring raw data

* Click the `Data` tab to view/edit the data associated with the layer. You can also assign aliases to field names, as well as add/delete or show/hide fields.

#### Visualizing data

* Click the `Visualization` tab. Because we specified coordinate fields when publishing the CSV, our default view will be a map. 
* Adjust how the data are visualized by default using the tools on the left side of the map view. 
  * Add two attributes: `CommCode` and `Hg_ss_avg`. Then you can color by community and size by mean Hg.

#### View usage of the data

#### Manage settings 



### 3. Working with your data in a Map

* Click Open in Map Viewer to create a new Map Viewer object and add this data set to it.
* Add Pervuian Distritos: 
  * Add > Browse Living Atlas > Search for "Peru"
  * Select and add <u>Peru Distrito Boundaries 2018</u>
  * Close data selection by clicking `←`
  * Symbolize the layers.
* Select Add > Search for Layers
  * Search for "Peru, metalogenetico"; filter for feature layers
  * In the search box, enter `92f3ea2f1b5647d891df96f5e47b2af8`
  * Click the + to add this layer to your existing map.
  * Click the back arrow ← to navigate back to the map
* Explore these layers: click on a feature to display its attributes; open up its attribute table
* Filter records for `E_PRINCIPIA contains Au`.
* Save the map.
* Optionally share the map, but this will also share the data...



### 4. Analysis: Compute # of mines within a set distance of each sample site

* Click the Analysis tab
* Click Analyze Patterns> Calculate Density
  * Compute the density of Gold mines --> `Mine Density`
* Click Manage Data > Overlay Layers 
  * Input layer = Suspended particles
  * Overlay layer =- Mine Density
  * Output = `Intersect of Suspended_Particles_Watersheds`
* Click Find Locations > Create Watersheds
  * Compute watersheds from each sample point
* Select Summarize Data>Summarize Nearby
  * Select the mines layer as the layer from which distances will be measured...
  * Select Suspended Particles as layer to summarize
  * Summarize by line distance, using 1, 2, and 3 km distances
  * Tally the count of mines near each sample location
  * Run analysis
* View the results



#### 5. More visualizations with Insights