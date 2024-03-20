.class public final synthetic Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/systemui/MiuiDependency$MiuiLazyDependencyCreator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ldagger/Lazy;


# direct methods
.method public synthetic constructor <init>(Ldagger/Lazy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;->f$0:Ldagger/Lazy;

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
    iget v0, p0, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;->f$0:Ldagger/Lazy;

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
    :pswitch_1
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_2
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_4
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 40
.end method
