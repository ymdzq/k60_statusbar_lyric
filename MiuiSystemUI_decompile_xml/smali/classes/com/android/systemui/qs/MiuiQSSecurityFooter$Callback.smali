.class public final Lcom/android/systemui/qs/MiuiQSSecurityFooter$Callback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiQSSecurityFooter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/MiuiQSSecurityFooter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter$Callback;->this$0:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter$Callback;->this$0:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mHandler:Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
    .line 10
.end method
