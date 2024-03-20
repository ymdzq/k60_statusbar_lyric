.class public final enum Lmiui/sharesdk/ChooseMode;
.super Ljava/lang/Enum;
.source "ChooseMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/sharesdk/ChooseMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/sharesdk/ChooseMode;

.field public static final enum MODE_MULTIPLE:Lmiui/sharesdk/ChooseMode;

.field public static final enum MODE_SINGLE:Lmiui/sharesdk/ChooseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lmiui/sharesdk/ChooseMode;

    const-string v1, "MODE_SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/sharesdk/ChooseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/sharesdk/ChooseMode;->MODE_SINGLE:Lmiui/sharesdk/ChooseMode;

    .line 5
    new-instance v1, Lmiui/sharesdk/ChooseMode;

    const-string v2, "MODE_MULTIPLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lmiui/sharesdk/ChooseMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiui/sharesdk/ChooseMode;->MODE_MULTIPLE:Lmiui/sharesdk/ChooseMode;

    .line 3
    filled-new-array {v0, v1}, [Lmiui/sharesdk/ChooseMode;

    move-result-object v0

    sput-object v0, Lmiui/sharesdk/ChooseMode;->$VALUES:[Lmiui/sharesdk/ChooseMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/sharesdk/ChooseMode;
    .locals 1

    .line 3
    const-class v0, Lmiui/sharesdk/ChooseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/sharesdk/ChooseMode;

    return-object p0
.end method

.method public static values()[Lmiui/sharesdk/ChooseMode;
    .locals 1

    .line 3
    sget-object v0, Lmiui/sharesdk/ChooseMode;->$VALUES:[Lmiui/sharesdk/ChooseMode;

    invoke-virtual {v0}, [Lmiui/sharesdk/ChooseMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/sharesdk/ChooseMode;

    return-object v0
.end method
