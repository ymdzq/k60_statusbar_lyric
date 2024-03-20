.class public final synthetic Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/reflect/Field;

.field public final synthetic f$1:Ljava/lang/reflect/AccessibleObject;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/AccessibleObject;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$0:Ljava/lang/reflect/Field;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$1:Ljava/lang/reflect/AccessibleObject;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const-string v2, "MiuiMultiWindowUtils"

    .line 5
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$0:Ljava/lang/reflect/Field;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$1:Ljava/lang/reflect/AccessibleObject;

    .line 14
    check-cast p0, Ljava/lang/reflect/Method;

    .line 16
    check-cast p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 18
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    new-array v0, v1, [Ljava/lang/Object;

    .line 26
    iget-object p1, p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    .line 28
    aput-object p1, v0, v3

    .line 30
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :catch_0
    const-string p0, "isInTopGameList"

    .line 46
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    move v1, v3

    .line 51
    :goto_0
    return v1

    .line 52
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$0:Ljava/lang/reflect/Field;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$1:Ljava/lang/reflect/AccessibleObject;

    .line 55
    check-cast p0, Ljava/lang/reflect/Field;

    .line 57
    check-cast p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 59
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 61
    move-result v0

    .line 64
    if-eq v0, v1, :cond_2

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 67
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    if-eqz p0, :cond_1

    .line 71
    goto :goto_2

    .line 73
    :catch_1
    const-string p0, "pinSize"

    .line 74
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    move v1, v3

    .line 79
    :cond_2
    :goto_2
    return v1

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 82
.end method
