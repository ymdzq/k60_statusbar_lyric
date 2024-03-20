.class Lcom/android/settings/GxzwQuickOpenNavigationView$1;
.super Ljava/lang/Object;
.source "GxzwQuickOpenNavigationView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GxzwQuickOpenNavigationView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GxzwQuickOpenNavigationView;


# direct methods
.method public static synthetic $r8$lambda$EwzYuO7Omhyr4vkqlibrOYxlL1E(Lcom/android/settings/GxzwQuickOpenNavigationView$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/GxzwQuickOpenNavigationView$1;->lambda$onPrepared$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/GxzwQuickOpenNavigationView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/GxzwQuickOpenNavigationView$1;->this$0:Lcom/android/settings/GxzwQuickOpenNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPrepared$0()V
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/android/settings/GxzwQuickOpenNavigationView$1;->this$0:Lcom/android/settings/GxzwQuickOpenNavigationView;

    invoke-static {p0}, Lcom/android/settings/GxzwQuickOpenNavigationView;->-$$Nest$fgetmVideoView(Lcom/android/settings/GxzwQuickOpenNavigationView;)Lcom/android/settings/MutedVideoView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 58
    iget-object p1, p0, Lcom/android/settings/GxzwQuickOpenNavigationView$1;->this$0:Lcom/android/settings/GxzwQuickOpenNavigationView;

    invoke-static {p1}, Lcom/android/settings/GxzwQuickOpenNavigationView;->-$$Nest$fgetmVideoView(Lcom/android/settings/GxzwQuickOpenNavigationView;)Lcom/android/settings/MutedVideoView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/MutedVideoView;->setLooping(Z)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/GxzwQuickOpenNavigationView$1;->this$0:Lcom/android/settings/GxzwQuickOpenNavigationView;

    invoke-static {p1}, Lcom/android/settings/GxzwQuickOpenNavigationView;->-$$Nest$fgetmVideoView(Lcom/android/settings/GxzwQuickOpenNavigationView;)Lcom/android/settings/MutedVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/MutedVideoView;->start()V

    .line 62
    iget-object p1, p0, Lcom/android/settings/GxzwQuickOpenNavigationView$1;->this$0:Lcom/android/settings/GxzwQuickOpenNavigationView;

    invoke-static {p1}, Lcom/android/settings/GxzwQuickOpenNavigationView;->-$$Nest$fgetmVideoView(Lcom/android/settings/GxzwQuickOpenNavigationView;)Lcom/android/settings/MutedVideoView;

    move-result-object p1

    new-instance v0, Lcom/android/settings/GxzwQuickOpenNavigationView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/GxzwQuickOpenNavigationView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/GxzwQuickOpenNavigationView$1;)V

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
