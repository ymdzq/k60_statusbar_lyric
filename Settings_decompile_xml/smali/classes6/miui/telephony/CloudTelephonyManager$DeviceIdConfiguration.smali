.class interface abstract Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;
.super Ljava/lang/Object;
.source "CloudTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/CloudTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DeviceIdConfiguration"
.end annotation


# virtual methods
.method public abstract checkValid(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract getBusywaitRetryIntervalMillisRecommandation(Landroid/content/Context;)J
.end method

.method public abstract getBusywaitTimeoutMillisRecommandation(Landroid/content/Context;)J
.end method

.method public abstract tryGetId(Landroid/content/Context;)Ljava/lang/String;
.end method
