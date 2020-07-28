case $1 in
	1) geo="--min-lon=7.0 --max-lon=7.25 --min-lat=50.7 --max-lat=50.875";;		# Region 01: Bonn - Siegerland
	
	2) geo="--min-lon=7.75 --max-lon=9.0 --min-lat=49.75 --max-lat=50.25 ";;	# Region 02: Frankfurt and surroundings
	
	3) geo="--min-lon=7.75 --max-lon=8.5 --min-lat=47.75 --max-lat=48.25";;		# Region 03: Rheintal and Schwarzwald (1) - Freiburg 
	
	4) geo="--min-lon=7.75 --max-lon=8.5 --min-lat=48.25 --max-lat=49.125";;	# Region 04: Rheintal and Schwarzwald (2) - Karlsruhe and Baden-Baden
	
	5) geo="--min-lon=8.0 --max-lon=8.75 --min-lat=49.125 --max-lat=49.75";;	# Region 05: Rheintal (3) - Speyer to Bensheim
	
	6) geo="--min-lon=9.5 --max-lon=10.25 --min-lat=53.375 --max-lat=53.75";;	# Region 06: Hamburg and surroundings
	
	7) geo="--min-lon=10.75 --max-lon=11.25 --min-lat=49.25 --max-lat=49.875";;	# Region 07: Nürnberg and surroundings
	
	8) geo="--min-lon=10.75 --max-lon=11.5 --min-lat=50.75 --max-lat=51.125";;	# Region 08: Erfurt and Weimar
	
	9) geo="--min-lon=8.75 --max-lon=9.5 --min-lat=48.375 --max-lat=48.875";;	# Region 09: Stuttgart and surroundings
	
	10) geo="--min-lon=7.5 --max-lon=8.0 --min-lat=49.25 --max-lat=49.625";;	# Region 10: Kaiserslautern and Ramstein AB
	
	11) geo="--min-lon=6.25 --max-lon=7 --min-lat=49.875 --max-lat=50.25";;		# Region 11: Eifel: Bitburg and Spangdahlem AB
	
	12) geo="--min-lon=10.75 --max-lon=12.0 --min-lat=47.875 --max-lat=48.5";;	# Region 12: München and surroundings
	
	13) geo="--min-lon=9.5 --max-lon=10.25 --min-lat=48.25 --max-lat=48.625";;	# Region 13: Ulm
	
	14) geo="--min-lon=8.8 --max-lon=9.8 --min-lat=47.3 --max-lat=47.9";;
	15) geo="--min-lon=14.5 --max-lon=15.0 --min-lat=47.0 --max-lat=47.3";;
	16) geo="--min-lon=8.4 --max-lon=8.8 --min-lat=47.1 --max-lat=47.9";;
	17) geo="--min-lon=7.8 --max-lon=8.8 --min-lat=46.5 --max-lat=47.1";;
	18) geo="--min-lon=7.1 --max-lon=7.8 --min-lat=46.8 --max-lat=47.4";;
	19) geo="--min-lon=7.0 --max-lon=7.8 --min-lat=46.0 --max-lat=46.8";;
	20) geo="--min-lon=18.8 --max-lon=19.4 --min-lat=47.3 --max-lat=47.75";;
	21) geo="--min-lon=11.25 --max-lon=14.75 --min-lat=53.75 --max-lat=54.75";;
	22) geo="--min-lon=7.2 --max-lon=7.8 --min-lat=50.2 --max-lat=50.5";;
	23) geo="--min-lon=6.9 --max-lon=7.2 --min-lat=49.8 --max-lat=50.2";;
	24) geo="--min-lon=11.0 --max-lon=11.75 --min-lat=48.5 --max-lat=48.9";;
	25) geo="--min-lon=19.0 --max-lon=19.25 --min-lat=50.25 --max-lat=50.50";;
	26) geo="--min-lon=16.0 --max-lon=17.0 --min-lat=48.0 --max-lat=48.5";;
	27) geo="--min-lon=8.8 --max-lon=9.5 --min-lat=49.0 --max-lat=49.8";;
	28) geo="--min-lon=6.5 --max-lon=6.7 --min-lat=49.4 --max-lat=49.8";;
	29) geo="--min-lon=13.0 --max-lon=14.0 --min-lat=52 --max-lat=53";;
	30) geo="--min-lon=6.5 --max-lon=7.5 --min-lat=49.0 --max-lat=49.5";;
	31) geo="--min-lon=13.75 --max-lon=15.0 --min-lat=53.25 --max-lat=54.375";;
	
	*) geo="--min-lon=9.1 --max-lon=9.2 --min-lat=49.3 --max-lat=49.5";; 		# test, can be replaced
esac

echo $1
echo $geo

if [ ! -z "$2" ]  && [ $2 = "light" ]
then
	echo "Light built: Not building Asphalt, Railroad, Stream, River";
	arg="";
else
	arg="Asphalt Railroad Stream River";
fi

tg-construct --work-dir=./work-final --output-dir=./output/Terrain `echo $geo` --threads AirportArea SRTM-3 AirportObj Default Ocean Hole Freeway Road Road-Motorway Road-Trunk Road-Residential Road-Primary Road-Secondary Road-Tertiary Road-Service Road-Pedestrian Road-Steps Road-Unclassified Airport Pond Lake DryLake Reservoir IntermittentLake IntermittentStream Watercourse Canal Cliffs Glacier PackIce PolarIce Ocean Estuary Urban SubUrban Town Fishing Construction Industrial Port Dump FloodLand Lagoon Bog Marsh SaltMarsh Sand Saline Littoral Dirt Rock Lava OpenMining BuiltUpCover Transport Cemetery DryCrop IrrCrop Rice MixedCrop Vineyard Bamboo Mangrove ComplexCrop NaturalCrop CropGrass CropWood AgroForest Olives GolfCourse Greenspace GrassCover Grassland ScrubCover Scrub ShrubGrassCover SavannaCover Orchard DeciduousForest DeciduousBroadCover EvergreenForest EvergreenBroadCover MixedForest RainForest BarrenCover HerbTundra Sclerophyllous Heath Burnt SnowCover Island Default Void Null Unknown $arg
