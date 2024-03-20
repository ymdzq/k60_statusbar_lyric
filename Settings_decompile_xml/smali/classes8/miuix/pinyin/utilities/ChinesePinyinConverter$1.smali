.class Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;
.super Lmiuix/core/util/SoftReferenceSingleton;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pinyin/utilities/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/SoftReferenceSingleton<",
        "Lmiuix/pinyin/utilities/ChinesePinyinConverter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lmiuix/core/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;->createInstance(Ljava/lang/Object;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    move-result-object p0

    return-object p0
.end method

.method protected createInstance(Ljava/lang/Object;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;
    .locals 1

    .line 69
    new-instance p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;-><init>(Landroid/content/Context;Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V

    return-object p0
.end method
