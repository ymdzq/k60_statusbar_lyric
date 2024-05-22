.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/GlobalActions;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mPlugin:Lcom/android/systemui/plugins/GlobalActions;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions;->destroy()V

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mPlugin:Lcom/android/systemui/plugins/GlobalActions;

    .line 13
    return-void
    .line 15
.end method
