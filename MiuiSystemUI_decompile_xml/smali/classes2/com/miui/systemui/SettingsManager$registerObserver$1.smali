.class public final Lcom/miui/systemui/SettingsManager$registerObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $callback:Lkotlin/jvm/functions/Function0;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/miui/systemui/SettingsManager$registerObserver$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/SettingsManager$registerObserver$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/miui/systemui/SettingsManager$registerObserver$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/systemui/SettingsManager$registerObserver$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 8
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/miui/systemui/SettingsManager$registerObserver$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 14
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
