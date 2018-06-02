@interface  YTEngineYoukuPlatformManager:NSObject{

_Bool mAdvertisementEnable;
_Bool mOfflineAdvertisementEnable;
_Bool mOverseaAdvertisementEnable;
_Bool mImageAdvertisementEnable;
  _Bool mPreVideoAdEnable;
}
@property(nonatomic) _Bool overseaAdvertisementEnable;
@property(nonatomic) _Bool preVideoAdEnable;
@property(nonatomic) _Bool offlineAdvertisementEnable;
@property(nonatomic) _Bool imageAdVertisementEnable;
@property(nonatomic) _Bool advertisementEnable;

@end



%hook YTEngineYoukuPlatformManager 
-(BOOL)mAdvertisementEnable{
	
	
	return NO;
	
	
}

-(BOOL)mOfflineAdvertisementEnable{
	
	
	return NO;
	
}
-(BOOL)mOverseaAdvertisementEnable{
	
	
	return NO;
	
}
-(BOOL)mImageAdvertisementEnable{
	
	
	return NO;
	
}
-(BOOL)mPreVideoAdEnable{
	
	
	return NO;
	
}
%end



@interface YTEngineConfigurationItem : NSObject
{
	
	_Bool _enableXAd;
	_Bool _enableAdCache;
	
}
@property(nonatomic) _Bool enableAdCache; // @synthesize enableAdCache=_enableAdCache;
@property(nonatomic) _Bool enableXAd; // @synthesize enableXAd=_enableXAd;

@end


%hook YTEngineConfigurationItem
-(void)setEnableXAd:(BOOL)arg1{
	
	
	%orig(NO);
	
}
-(void)setEnableAdCache:(BOOL)arg1{
	
	
	%orig(NO);
	
}
%end


@interface BPManager:NSObject
-(void)setDisbaleAdv:(BOOL)arg1;
@end


%hook BPManager
-(void)setDisbaleAdv:(BOOL)arg1{
	
	%orig(!arg1);
	
}

%end


@interface PlayVideoController
-(void)setDisableAdv:(BOOL)arg;

@end


%hook PlayVideoController
-(void)setDisableAdv:(BOOL)arg{
	
	%orig(!arg);
	
}

%end

@interface OPPlayerDataSource : NSObject
-(void)setDisableAdv:(BOOL)arg;

@end


%hook OPPlayerDataSource
-(void)setDisableAdv:(BOOL)arg{
	
	%orig(!arg);
	
}

%end

@interface PlayDetailController:NSObject
-(void)setDisableAdv:(BOOL)arg;

@end


%hook PlayDetailController
-(void)setDisableAdv:(BOOL)arg{
	
	%orig(!arg);
	
	
}

%end

@interface OPPlayerInstallData:NSObject
-(void)setDisableAdv:(BOOL)arg;

@end


%hook OPPlayerInstallData
-(void)setDisableAdv:(BOOL)arg{
	
	%orig(!arg);
	
}

%end