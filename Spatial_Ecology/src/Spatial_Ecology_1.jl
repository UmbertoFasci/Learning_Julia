using SpatialEcology, Plots, CSV, DataFrames, Statistics

# the object constructors take a wide range of objects, a typical one being a presence-absence matrix as a
# DataFrame and a 3-column dataframe with coordinates.
amphdata = CSV.read(joinpath(dirname(pathof(SpatialEcology)), "..", "data", "amph_Europe.csv"));
amphdata[1:3,1:6]

amph = Assemblage(amphdata[4:end],amphdata[1:3], sitecolumns = false)