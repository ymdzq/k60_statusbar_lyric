.class public final enum Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

.field public static final enum NONE:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

.field public static final enum STOPPED:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

.field public static final enum STOPPING:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 2
    const-string v1, "NONE"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->NONE:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 10
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 12
    const-string v2, "STARTING"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    .line 17
    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 20
    const-string v3, "STARTED"

    .line 22
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    .line 25
    new-instance v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 28
    const-string v4, "STOPPING"

    .line 30
    const/4 v5, 0x3

    .line 32
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STOPPING:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 36
    new-instance v4, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 38
    const-string v5, "STOPPED"

    .line 40
    const/4 v6, 0x4

    .line 42
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v4, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STOPPED:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 46
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 48
    move-result-object v0

    .line 51
    sput-object v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->$VALUES:[Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 52
    return-void
    .line 54
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->$VALUES:[Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 2
    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 8
    return-object v0
    .line 10
.end method
