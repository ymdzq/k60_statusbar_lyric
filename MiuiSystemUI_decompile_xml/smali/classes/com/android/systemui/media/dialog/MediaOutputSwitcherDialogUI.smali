.class public final Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final showMediaOutputSwitcher(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 10
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Landroid/view/View;Ljava/lang/String;Z)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "MediaOutputSwitcherDialogUI"

    .line 16
    const-string p1, "Unable to launch media output dialog. Package name is empty."

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_0
    return-void
    .line 23
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 4
    return-void
    .line 7
.end method
