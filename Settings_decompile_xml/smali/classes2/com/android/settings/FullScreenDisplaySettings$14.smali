.class Lcom/android/settings/FullScreenDisplaySettings$14;
.super Landroid/database/ContentObserver;
.source "FullScreenDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FullScreenDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FullScreenDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FullScreenDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$14;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$14;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-virtual {p0}, Lcom/android/settings/FullScreenDisplaySettings;->updatePrefence()V

    return-void
.end method
