.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$animateExitAndFinish$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$animateExitAndFinish$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$animateExitAndFinish$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    return-void
    .line 7
.end method
