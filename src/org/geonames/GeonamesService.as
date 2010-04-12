package org.geonames
{
	import flash.events.Event;

	public class GeonamesService
	{
		private var _url:String = "http://ws.geonames.org";
		
		
		public function GeonamesService()
		{
		}
		
		public function findNearby(lat:Number,lng:Number,
								   featureClass:String = null, featureCode:String = null,
									radius:Number = 0, maxRows:int = 0, style:String = null):GeonamesOperation
		{
			var params:Object = new Object();
				params.lat = lat;
				params.lng = lng;
				if(featureClass) { params.featureClass = featureClass }
				if(featureCode) { params.featureCode = featureCode }
				if(radius) { params.radius = radius }
				if(maxRows) { params.maxRows = maxRows }
				if(style) { params.style = style }
				
			var operation:GeonamesOperation = new GeonamesOperation(_url + '/findNearby',params);
				//operation.addEventListener(Event.COMPLETE,onComplete);				
			return operation;
		}
		
	}
}