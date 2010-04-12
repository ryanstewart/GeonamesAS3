package org.geonames
{
	public class Toponym
	{
		private var _name:String;
		private var _lat:Number;
		private var _lng:Number;
		private var _geonameId:int;
		private var _countryCode:String;
		private var _countryName:String;
		private var _fcl:String; // should be FeatureClass (enum?)
		private var _fcode:String;
		private var _fclName:String; // Array?
		private var _fcodeName:String // specific type?
		private var _population:Number;
		private var _alternateNames:String;
		private var _elevation:Number;
		private var _continentCode:String;
		private var _adminCode1:String;
		private var _adminName1:String;
		private var _adminCode2:String;
		private var _adminName2:String;
		private var _timezone:String; // should be timezone class
		private var _distance:Number; //

		public function Toponym()
		{
			
		}
		
		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}

		public function get lat():Number
		{
			return _lat;
		}

		public function set lat(value:Number):void
		{
			_lat = value;
		}

		public function get lng():Number
		{
			return _lng;
		}

		public function set lng(value:Number):void
		{
			_lng = value;
		}

		public function get geonameId():int
		{
			return _geonameId;
		}

		public function set geonameId(value:int):void
		{
			_geonameId = value;
		}

		public function get countryCode():String
		{
			return _countryCode;
		}

		public function set countryCode(value:String):void
		{
			_countryCode = value;
		}

		public function get countryName():String
		{
			return _countryName;
		}

		public function set countryName(value:String):void
		{
			_countryName = value;
		}

		public function get fcl():String
		{
			return _fcl;
		}

		public function set fcl(value:String):void
		{
			_fcl = value;
		}

		public function get fcode():String
		{
			return _fcode;
		}

		public function set fcode(value:String):void
		{
			_fcode = value;
		}

		public function get fclName():String
		{
			return _fclName;
		}

		public function set fclName(value:String):void
		{
			_fclName = value;
		}

		public function get fcodeName():String
		{
			return _fcodeName;
		}

		public function set fcodeName(value:String):void
		{
			_fcodeName = value;
		}

		public function get population():Number
		{
			return _population;
		}

		public function set population(value:Number):void
		{
			_population = value;
		}

		public function get alternateNames():String
		{
			return _alternateNames;
		}

		public function set alternateNames(value:String):void
		{
			_alternateNames = value;
		}

		public function get elevation():Number
		{
			return _elevation;
		}

		public function set elevation(value:Number):void
		{
			_elevation = value;
		}

		public function get continentCode():String
		{
			return _continentCode;
		}

		public function set continentCode(value:String):void
		{
			_continentCode = value;
		}

		public function get adminCode1():String
		{
			return _adminCode1;
		}

		public function set adminCode1(value:String):void
		{
			_adminCode1 = value;
		}

		public function get adminName1():String
		{
			return _adminName1;
		}

		public function set adminName1(value:String):void
		{
			_adminName1 = value;
		}

		public function get adminCode2():String
		{
			return _adminCode2;
		}

		public function set adminCode2(value:String):void
		{
			_adminCode2 = value;
		}

		public function get adminName2():String
		{
			return _adminName2;
		}

		public function set adminName2(value:String):void
		{
			_adminName2 = value;
		}

		public function get timezone():String
		{
			return _timezone;
		}

		public function set timezone(value:String):void
		{
			_timezone = value;
		}

		public function get distance():Number
		{
			return _distance;
		}

		public function set distance(value:Number):void
		{
			_distance = value;
		}

	}
}
