package org.geonames
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.HTTPStatusEvent;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;

	[Event(name="complete",type="flash.events.Event")]
	
	public class GeonamesOperation extends EventDispatcher
	{
		private var _url:String = "http://ws.geonames.org/";
		private var _method:String = URLRequestMethod.GET;
		private var _params:Object;
		private var _result:Array;
		//private var _result:Vector.<Toponym>;
		private var _loader:URLLoader;
		
		public var params:Object;
		
		public function GeonamesOperation(url:String,params:Object = null)
		{
			_url = url;
			_params = params;
		}
		
		
		public function get result():Array //Vector.<Toponym>
		{
			return _result;
		}
		/*
		public function set data(value:Object):void
		{
			_data = value;
		}
		*/

		public function call():void
		{
			var request:URLRequest = new URLRequest(_url);
				request.method;
			var vars:URLVariables;
				
			if(_params)
			{
				vars = new URLVariables();
				for( var property:String in _params)
				{
					if( _params[property] != null )
					{
						vars[property] = _params[property];
					}
				}
				request.data = vars;
			}
			
			_loader = new URLLoader();
			_loader.addEventListener(Event.COMPLETE, onComplete);
			_loader.addEventListener(HTTPStatusEvent.HTTP_STATUS,onStatus);
			_loader.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
			_loader.addEventListener(ProgressEvent.PROGRESS,onProgress);
			_loader.load(request);
		}
		
		protected function onComplete(event:Event):void
		{
			var xml:XML = new XML(_loader.data);
			var rows:int = xml.children().length();
			var result:Array = new Array();
			//var result:Vector.<Toponym> = new Vector.<Toponym>();
			for( var i:int = 0; i<rows; i++)
			{
				var toponym:Toponym = new Toponym();
				
				if(xml.geoname[i].name) { toponym.name = xml.geoname[i].name; }
				if(xml.geoname[i].lat) { toponym.lat = xml.geoname[i].lat; }
				if(xml.geoname[i].lng) { toponym.lng = xml.geoname[i].lng; }
				if(xml.geoname[i].geonameId) { toponym.geonameId = xml.geoname[i].geonameId; }
				if(xml.geoname[i].countryCode) { toponym.countryCode = xml.geoname[i].countryCode; }
				if(xml.geoname[i].countryName) { toponym.countryName = xml.geoname[i].countryName; }
				if(xml.geoname[i].fcl) { toponym.fcl = xml.geoname[i].fcl; }
				if(xml.geoname[i].fcode) { toponym.fcode = xml.geoname[i].fcode; }
				if(xml.geoname[i].fclName) { toponym.fclName = xml.geoname[i].fclName; }
				if(xml.geoname[i].fcodeName) { toponym.fcodeName = xml.geoname[i].fcodeName; }
				if(xml.geoname[i].population) { toponym.population = xml.geoname[i].population; }
				if(xml.geoname[i].alternateNames) { toponym.alternateNames = xml.geoname[i].alternateNames; }
				if(xml.geoname[i].elevation) { toponym.elevation = xml.geoname[i].elevation; }
				if(xml.geoname[i].continentCode) { toponym.continentCode = xml.geoname[i].continentCode; }
				if(xml.geoname[i].adminCode1) { toponym.adminCode1 = xml.geoname[i].adminCode1; }
				if(xml.geoname[i].adminName1) { toponym.adminName1 = xml.geoname[i].adminName1; }
				if(xml.geoname[i].adminCode2) { toponym.adminCode2 = xml.geoname[i].adminCode2; }
				if(xml.geoname[i].adminName2) { toponym.adminName2 = xml.geoname[i].adminName2; }
				if(xml.geoname[i].timezone) { toponym.timezone = xml.geoname[i].timezone; }
				if(xml.geoname[i].distance) { toponym.distance = xml.geoname[i].distance; }
				
				result.push(toponym);	
			}
			
			_result = result;
			
			//_data = _loader.data;
			dispatchEvent(new Event(Event.COMPLETE));
			trace('test');
		}
		
		protected function onStatus(event:HTTPStatusEvent):void
		{
			trace('test');
		}
		
		protected function onIOError(event:IOErrorEvent):void
		{
			trace('test');	
		}
		
		protected function onProgress(event:ProgressEvent):void
		{
			trace('test');	
		}
		
	}
}