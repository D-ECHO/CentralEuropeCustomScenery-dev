if [ $1 -eq 1 ]
then
	geo='--min-lon=7.0 --max-lon=7.3 --min-lat=50.7 --max-lat=50.8'
elif [ $1 -eq 2 ]
then
	geo="--min-lon=7.8 --max-lon=9.0 --min-lat=49.8 --max-lat=50.2"
elif [ $1 -eq 3 ]
then
	geo="--min-lon=7.7 --max-lon=8.4 --min-lat=47.8 --max-lat=48.3"
elif [ $1 -eq 4 ]
then
	geo="--min-lon=8.0 --max-lon=8.8 --min-lat=48.7 --max-lat=49.2"
elif [ $1 -eq 5 ]
then
	geo="--min-lon=8.1 --max-lon=8.8 --min-lat=49.2 --max-lat=49.8"
elif [ $1 -eq 6 ]
then
	geo="--min-lon=9.5 --max-lon=10.2 --min-lat=53.4 --max-lat=53.7"
elif [ $1 -eq 7 ]
then
	geo="--min-lon=10.9 --max-lon=11.2 --min-lat=49.3 --max-lat=49.9"
elif [ $1 -eq 8 ]
then
	geo="--min-lon=10.7 --max-lon=11.7 --min-lat=50.7 --max-lat=51.2"
elif [ $1 -eq 9 ]
then
	geo="--min-lon=8.8 --max-lon=9.5 --min-lat=48.4 --max-lat=48.9"
elif [ $1 -eq 10 ]
then
	geo="--min-lon=7.2 --max-lon=8.0 --min-lat=49.4 --max-lat=49.8"
elif [ $1 -eq 11 ]
then
	geo="--min-lon=6.4 --max-lon=6.9 --min-lat=49.8 --max-lat=50.2"
elif [ $1 -eq 12 ]
then
	geo="--min-lon=10.8 --max-lon=12.0 --min-lat=47.6 --max-lat=48.5"
elif [ $1 -eq 13 ]
then
	geo="--min-lon=9.6 --max-lon=10.3 --min-lat=48.3 --max-lat=48.6"
elif [ $1 -eq 14 ]
then
	geo="--min-lon=8.8 --max-lon=9.8 --min-lat=47.3 --max-lat=47.9"
elif [ $1 -eq 15 ]
then
	geo="--min-lon=14.5 --max-lon=15.0 --min-lat=47.0 --max-lat=47.3"
elif [ $1 -eq 16 ]
then
	geo="--min-lon=8.4 --max-lon=8.8 --min-lat=47.1 --max-lat=47.9"
elif [ $1 -eq 17 ]
then
	geo="--min-lon=7.8 --max-lon=8.8 --min-lat=46.5 --max-lat=47.1"
elif [ $1 -eq 18 ]
then
	geo="--min-lon=7.1 --max-lon=7.8 --min-lat=46.8 --max-lat=47.4"
elif [ $1 -eq 19 ]
then
	geo="--min-lon=7.0 --max-lon=7.8 --min-lat=46.0 --max-lat=46.8"
elif [ $1 -eq 20 ]
then
	geo="--min-lon=18.8 --max-lon=19.4 --min-lat=47.3 --max-lat=47.75"
fi
echo $1
echo $geo
tg-construct --work-dir=./work-final --output-dir=./output/Terrain `echo $geo` --threads AirportArea SRTM-1 AirportObj Default Ocean Hole Freeway Road Road-Motorway Road-Trunk Road-Residential Road-Primary Road-Secondary Road-Tertiary Road-Service Road-Pedestrian Road-Steps Road-Unclassified Railroad Asphalt Airport Pond Lake DryLake Reservoir IntermittentLake Stream River IntermittentStream Watercourse Canal Cliffs Glacier PackIce PolarIce Ocean Estuary Urban SubUrban Town Fishing Construction Industrial Port Dump FloodLand Lagoon Bog Marsh SaltMarsh Sand Saline Littoral Dirt Rock Lava OpenMining BuiltUpCover Transport Cemetery DryCrop IrrCrop Rice MixedCrop Vineyard Bamboo Mangrove ComplexCrop NaturalCrop CropGrass CropWood AgroForest Olives GolfCourse Greenspace GrassCover Grassland ScrubCover Scrub ShrubGrassCover SavannaCover Orchard DeciduousForest DeciduousBroadCover EvergreenForest EvergreenBroadCover MixedForest RainForest BarrenCover HerbTundra Sclerophyllous Heath Burnt SnowCover Island Default Void Null Unknown
