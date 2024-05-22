.class final Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->bgLooper:Landroid/os/Looper;

    .line 6
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2$1;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 13
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2$1;-><init>(Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;Landroid/os/Handler;)V

    .line 15
    return-object v1
    .line 18
.end method
