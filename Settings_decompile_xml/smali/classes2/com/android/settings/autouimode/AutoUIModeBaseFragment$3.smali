.class Lcom/android/settings/autouimode/AutoUIModeBaseFragment$3;
.super Ljava/lang/Object;
.source "AutoUIModeBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$3;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$3;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmSearchActionModeCallback(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Lmiuix/view/SearchActionMode$Callback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->startSearchMode(Lmiuix/view/SearchActionMode$Callback;)V

    return-void
.end method
