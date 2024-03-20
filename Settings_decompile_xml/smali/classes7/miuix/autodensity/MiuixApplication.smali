.class public Lmiuix/autodensity/MiuixApplication;
.super Lmiuix/app/Application;
.source "MiuixApplication.java"

# interfaces
.implements Lmiuix/autodensity/IDensity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lmiuix/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 12
    invoke-super {p0}, Lmiuix/app/Application;->onCreate()V

    .line 13
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;)Lmiuix/autodensity/AutoDensityConfig;

    return-void
.end method

.method public shouldAdaptAutoDensity()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
