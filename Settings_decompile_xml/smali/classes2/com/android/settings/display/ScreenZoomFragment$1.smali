.class Lcom/android/settings/display/ScreenZoomFragment$1;
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

    .line 159
    iput-object p1, p0, Lcom/android/settings/display/ScreenZoomFragment$1;->this$0:Lcom/android/settings/display/ScreenZoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomFragment$1;->this$0:Lcom/android/settings/display/ScreenZoomFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
