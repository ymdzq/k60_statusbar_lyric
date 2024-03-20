.class public Lcom/android/settings/colorgameled/LedColorPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "LedColorPreference.java"


# instance fields
.field private mBitMapView:Lcom/android/settings/colorgameled/LedColorBitMapView;

.field private mImageView:Landroid/widget/ImageView;

.field private mfragment:Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetmImageView(Lcom/android/settings/colorgameled/LedColorPreference;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorPreference;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmfragment(Lcom/android/settings/colorgameled/LedColorPreference;)Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorPreference;->mfragment:Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget p1, Lcom/android/settings/R$layout;->led_color_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/colorgameled/LedColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-object p2, p0, Lcom/android/settings/colorgameled/LedColorPreference;->mfragment:Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3

    .line 35
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 36
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    sget v1, Lcom/android/settings/R$id;->led_color_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/colorgameled/LedColorBitMapView;

    iput-object v1, p0, Lcom/android/settings/colorgameled/LedColorPreference;->mBitMapView:Lcom/android/settings/colorgameled/LedColorBitMapView;

    if-eqz v1, :cond_0

    .line 40
    new-instance v2, Lcom/android/settings/colorgameled/LedColorPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/colorgameled/LedColorPreference$1;-><init>(Lcom/android/settings/colorgameled/LedColorPreference;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/colorgameled/LedColorBitMapView;->setCallback(Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;)V

    .line 67
    :cond_0
    sget v1, Lcom/android/settings/R$id;->phone_led_color:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/colorgameled/LedColorPreference;->mImageView:Landroid/widget/ImageView;

    .line 68
    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorPreference;->mfragment:Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;

    invoke-virtual {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getDifferentLights()[I

    move-result-object p0

    aget p0, p0, v0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
