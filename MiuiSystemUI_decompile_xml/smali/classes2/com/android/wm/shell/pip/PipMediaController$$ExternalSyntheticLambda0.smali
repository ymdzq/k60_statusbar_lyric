.class public final synthetic Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipMediaController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipMediaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    .line 4
    return-void
    .line 7
.end method
