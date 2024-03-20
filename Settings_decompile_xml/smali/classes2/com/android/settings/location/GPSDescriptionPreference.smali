.class public Lcom/android/settings/location/GPSDescriptionPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "GPSDescriptionPreference.java"


# instance fields
.field private gpsSupport:Z

.field private indiaBuild:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/settings/location/GPSDescriptionPreference;->indiaBuild:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/settings/location/GPSDescriptionPreference;->gpsSupport:Z

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/location/GPSDescriptionPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/android/settings/location/GPSDescriptionPreference;->indiaBuild:Z

    .line 24
    iput-boolean p2, p0, Lcom/android/settings/location/GPSDescriptionPreference;->gpsSupport:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/location/GPSDescriptionPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/android/settings/location/GPSDescriptionPreference;->indiaBuild:Z

    .line 24
    iput-boolean p2, p0, Lcom/android/settings/location/GPSDescriptionPreference;->gpsSupport:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/location/GPSDescriptionPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/android/settings/location/GPSDescriptionPreference;->indiaBuild:Z

    .line 24
    iput-boolean p2, p0, Lcom/android/settings/location/GPSDescriptionPreference;->gpsSupport:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/location/GPSDescriptionPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/android/settings/location/GPSDescriptionPreference;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "ro.product.mod_device"

    const-string v0, ""

    .line 65
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "in_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/location/GPSDescriptionPreference;->indiaBuild:Z

    .line 66
    iget-object p1, p0, Lcom/android/settings/location/GPSDescriptionPreference;->mContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 67
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/location/GPSDescriptionPreference;->gpsSupport:Z

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 48
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    const v0, 0x1020010    # @android:id/summary

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/android/settings/location/GPSDescriptionPreference;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 54
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/location/GPSDescriptionPreference;->gpsSupport:Z

    if-nez v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/android/settings/location/GPSDescriptionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/settings/location/GPSDescriptionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->location_description_no_gps:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 56
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/location/GPSDescriptionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/settings/location/GPSDescriptionPreference;->indiaBuild:Z

    if-eqz p0, :cond_3

    .line 57
    sget p0, Lcom/android/settings/R$string;->gps_description_global:I

    goto :goto_1

    :cond_3
    sget p0, Lcom/android/settings/R$string;->gps_description:I

    .line 56
    :goto_1
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
