.class public final Lmiuix/appcompat/internal/widget/DialogRootView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

.field public final synthetic val$bottom:I

.field public final synthetic val$hDp:I

.field public final synthetic val$left:I

.field public final synthetic val$right:I

.field public final synthetic val$top:I

.field public final synthetic val$wDp:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/widget/DialogRootView;IIIIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 2
    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$wDp:I

    .line 4
    iput p3, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$hDp:I

    .line 6
    iput p4, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$left:I

    .line 8
    iput p5, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$top:I

    .line 10
    iput p6, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$right:I

    .line 12
    iput p7, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$bottom:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 12
    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$wDp:I

    .line 14
    if-ne v1, v2, :cond_0

    .line 16
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 18
    iget v1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$hDp:I

    .line 20
    if-eq v0, v1, :cond_1

    .line 22
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 24
    iget-object v1, v0, Lmiuix/appcompat/internal/widget/DialogRootView;->mCallback:Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    .line 26
    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 34
    move-result-object v2

    .line 37
    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$left:I

    .line 38
    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$top:I

    .line 40
    iget v5, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$right:I

    .line 42
    iget v6, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$bottom:I

    .line 44
    invoke-interface/range {v1 .. v6}, Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;IIII)V

    .line 46
    :cond_1
    return-void
    .line 49
.end method
