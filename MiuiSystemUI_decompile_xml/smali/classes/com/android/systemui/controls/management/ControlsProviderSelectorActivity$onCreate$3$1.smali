.class public final Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onCreate$3$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onCreate$3$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onCreate$3$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->onBackPressed()V

    .line 4
    return-void
    .line 7
.end method
