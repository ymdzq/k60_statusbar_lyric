.class public Lcom/android/settings/fuelgauge/BatterySettingsFeatureProviderImpl;
.super Ljava/lang/Object;
.source "BatterySettingsFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySettingsFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method
