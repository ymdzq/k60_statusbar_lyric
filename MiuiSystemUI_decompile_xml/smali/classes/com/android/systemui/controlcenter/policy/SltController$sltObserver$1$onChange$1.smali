.class final Lcom/android/systemui/controlcenter/policy/SltController$sltObserver$1$onChange$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controlcenter/policy/SltController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/SltController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SltController$sltObserver$1$onChange$1;->this$0:Lcom/android/systemui/controlcenter/policy/SltController;

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
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SltController$sltObserver$1$onChange$1;->this$0:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/SltController;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    const-string/jumbo v1, "satellite_state"

    .line 10
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    move v2, v1

    .line 21
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/controlcenter/policy/SltController;->setSltEnabled(Z)V

    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    return-object p0
    .line 27
.end method
