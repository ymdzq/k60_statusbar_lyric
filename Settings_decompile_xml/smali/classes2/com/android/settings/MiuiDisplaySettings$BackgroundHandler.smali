.class Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;
.super Landroid/os/Handler;
.source "MiuiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Looper;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    .line 1125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Looper;Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;-><init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Looper;)V

    return-void
.end method
