.class Lcom/android/settings/applicationmode/AppControlBaseFragment$2;
.super Ljava/lang/Object;
.source "AppControlBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applicationmode/AppControlBaseFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applicationmode/AppControlBaseFragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$2;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$2;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-static {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$fgetmSearchActionModeCallback(Lcom/android/settings/applicationmode/AppControlBaseFragment;)Lmiuix/view/SearchActionMode$Callback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->startSearchMode(Lmiuix/view/SearchActionMode$Callback;)V

    return-void
.end method
