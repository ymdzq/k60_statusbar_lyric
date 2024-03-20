.class Lcom/android/settings/colorgameled/LedColorBitMapView$1;
.super Ljava/lang/Object;
.source "LedColorBitMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorgameled/LedColorBitMapView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/colorgameled/LedColorBitMapView;


# direct methods
.method constructor <init>(Lcom/android/settings/colorgameled/LedColorBitMapView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView$1;->this$0:Lcom/android/settings/colorgameled/LedColorBitMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x32

    .line 79
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView$1;->this$0:Lcom/android/settings/colorgameled/LedColorBitMapView;

    invoke-virtual {v0}, Lcom/android/settings/colorgameled/LedColorBitMapView;->updatePoints()V

    .line 85
    new-instance v0, Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;-><init>(Lcom/android/settings/colorgameled/LedColorBitMapView$1;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
