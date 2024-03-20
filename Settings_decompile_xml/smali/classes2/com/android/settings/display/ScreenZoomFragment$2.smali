.class Lcom/android/settings/display/ScreenZoomFragment$2;
.super Ljava/lang/Object;
.source "ScreenZoomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenZoomFragment;->initActionBarMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenZoomFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenZoomFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/display/ScreenZoomFragment$2;->this$0:Lcom/android/settings/display/ScreenZoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/android/settings/display/ScreenZoomFragment$2;->this$0:Lcom/android/settings/display/ScreenZoomFragment;

    invoke-static {p1}, Lcom/android/settings/display/ScreenZoomFragment;->-$$Nest$mconfirmType(Lcom/android/settings/display/ScreenZoomFragment;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    new-instance v0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/android/settings/display/ScreenZoomFragment$2;->this$0:Lcom/android/settings/display/ScreenZoomFragment;

    iget v1, v1, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-virtual {v0, v1}, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->setCurrentUiMode(I)V

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->setType(I)V

    .line 178
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomFragment$2;->this$0:Lcom/android/settings/display/ScreenZoomFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->-$$Nest$sfgetFRAG_TAG()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomFragment$2;->this$0:Lcom/android/settings/display/ScreenZoomFragment;

    invoke-static {p0}, Lcom/android/settings/display/ScreenZoomFragment;->-$$Nest$meffectZoomLevel(Lcom/android/settings/display/ScreenZoomFragment;)V

    :goto_0
    return-void
.end method
