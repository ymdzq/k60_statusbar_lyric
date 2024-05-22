.class final synthetic Lcom/android/systemui/controls/management/ControlInfoWrapper$customIconGetter$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/management/ControlInfoWrapper$customIconGetter$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controls/management/ControlInfoWrapper$customIconGetter$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/controls/management/ControlInfoWrapper$customIconGetter$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/controls/management/ControlInfoWrapper$customIconGetter$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlInfoWrapper$customIconGetter$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x2

    .line 2
    const-class v2, Lcom/android/systemui/controls/management/ControlsModelKt;

    .line 3
    const-string v3, "nullIconGetter"

    .line 5
    const-string v4, "nullIconGetter(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Icon;"

    .line 7
    const/4 v5, 0x1

    .line 9
    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/ComponentName;

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0
    .line 7
.end method
