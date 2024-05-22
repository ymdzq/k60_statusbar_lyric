.class public final Lcom/android/systemui/accessibility/floatingmenu/Position;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sStringCommaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field public mPercentageX:F

.field public mPercentageY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2
    const/16 v1, 0x2c

    .line 4
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 6
    sput-object v0, Lcom/android/systemui/accessibility/floatingmenu/Position;->sStringCommaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    .line 5
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ", "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method
