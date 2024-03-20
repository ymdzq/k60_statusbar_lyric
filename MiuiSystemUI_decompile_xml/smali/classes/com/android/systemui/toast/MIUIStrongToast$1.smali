.class public final Lcom/android/systemui/toast/MIUIStrongToast$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$1;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$1;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 4
    if-nez v0, :cond_1

    .line 6
    iget-boolean p1, p1, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckStartAnimation:Z

    .line 8
    if-eqz p1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "MIUIStrongToast"

    .line 13
    const-string v0, "hide strong toast"

    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$1;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->hideStrongToast()V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method
