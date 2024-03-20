.class Lmiuix/pinyin/utilities/HindiPinyinConverter$1;
.super Lmiuix/core/util/SoftReferenceSingleton;
.source "HindiPinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pinyin/utilities/HindiPinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/SoftReferenceSingleton<",
        "Lmiuix/pinyin/utilities/HindiPinyinConverter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Lmiuix/core/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    .line 333
    invoke-virtual {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;->createInstance()Lmiuix/pinyin/utilities/HindiPinyinConverter;

    move-result-object p0

    return-object p0
.end method

.method protected createInstance()Lmiuix/pinyin/utilities/HindiPinyinConverter;
    .locals 1

    .line 336
    new-instance p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;-><init>(Lmiuix/pinyin/utilities/HindiPinyinConverter$1;)V

    return-object p0
.end method
