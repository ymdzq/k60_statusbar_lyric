.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 15
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 17
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->$r8$lambda$XA0h6pzOvAXj-vCTgmQHqCNRt7E(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 30
.end method
