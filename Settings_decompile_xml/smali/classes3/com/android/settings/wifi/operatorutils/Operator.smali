.class public abstract Lcom/android/settings/wifi/operatorutils/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDefaultEapMethod()I
.end method

.method public abstract getSlotId()I
.end method

.method public abstract isForbidDelSsid(Ljava/lang/String;)Z
.end method

.method public abstract isOpCustomization(Ljava/lang/String;)Z
.end method

.method public abstract opCustomizationView(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V
.end method

.method public abstract registerReceiver()V
.end method

.method public abstract stopTethering(I)V
.end method

.method public abstract updateWifiConfig()V
.end method
