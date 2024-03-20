.class Lcom/android/settings/display/ScreenColorBitMapView$2;
.super Ljava/lang/Object;
.source "ScreenColorBitMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenColorBitMapView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenColorBitMapView;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenColorBitMapView;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/display/ScreenColorBitMapView$2;->this$0:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView$2;->this$0:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenColorBitMapView;->updateThreePoints()V

    .line 140
    new-instance v0, Lcom/android/settings/display/ScreenColorBitMapView$2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenColorBitMapView$2$1;-><init>(Lcom/android/settings/display/ScreenColorBitMapView$2;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
