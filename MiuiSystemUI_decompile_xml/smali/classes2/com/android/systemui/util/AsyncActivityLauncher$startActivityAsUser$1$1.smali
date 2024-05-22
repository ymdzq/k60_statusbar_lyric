.class public final Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $waitResult:Landroid/app/WaitResult;

.field public final synthetic this$0:Lcom/android/systemui/util/AsyncActivityLauncher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/AsyncActivityLauncher;Landroid/app/WaitResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;->$waitResult:Landroid/app/WaitResult;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/util/AsyncActivityLauncher;->pendingCallback:Lkotlin/jvm/functions/Function1;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;->$waitResult:Landroid/app/WaitResult;

    .line 8
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    return-void
    .line 13
.end method
