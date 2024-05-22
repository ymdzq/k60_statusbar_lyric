.class final Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger$logOnDataActivity$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger$logOnDataActivity$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger$logOnDataActivity$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger$logOnDataActivity$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger$logOnDataActivity$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger$logOnDataActivity$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 4
    move-result p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt2()I

    .line 8
    move-result p1

    .line 11
    const-string v0, "onDataActivity: subId="

    .line 12
    const-string v1, " direction="

    .line 14
    invoke-static {v0, p0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method
