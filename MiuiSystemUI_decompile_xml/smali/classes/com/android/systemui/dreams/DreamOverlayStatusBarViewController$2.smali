.class public final Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$2;->this$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$2;->this$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 7
    move-result v0

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mEntryAnimationsFinished:Z

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->updateVisibility()V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 16
    const/16 v1, 0x10

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 20
    move-result v0

    .line 23
    const v1, 0x7f130151    # @string/assistant_attention_content_description 'Assistant attention on'

    .line 24
    const/4 v2, 0x7

    .line 27
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->showIcon(IIZ)V

    .line 28
    return-void
    .line 31
.end method
