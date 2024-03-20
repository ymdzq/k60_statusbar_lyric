.class public final synthetic Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 11
    return-void

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 17
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 22
.end method
