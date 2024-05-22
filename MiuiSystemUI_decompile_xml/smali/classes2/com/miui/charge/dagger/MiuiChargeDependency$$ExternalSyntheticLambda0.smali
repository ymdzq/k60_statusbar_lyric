.class public final synthetic Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/MiuiDependency$MiuiLazyDependencyCreator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ldagger/Lazy;


# direct methods
.method public synthetic constructor <init>(Ldagger/Lazy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;->f$0:Ldagger/Lazy;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;->f$0:Ldagger/Lazy;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
