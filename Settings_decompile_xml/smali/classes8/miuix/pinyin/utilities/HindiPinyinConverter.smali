.class public Lmiuix/pinyin/utilities/HindiPinyinConverter;
.super Ljava/lang/Object;
.source "HindiPinyinConverter.java"


# static fields
.field private static final INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/pinyin/utilities/HindiPinyinConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static sArrayList:Lmiuix/core/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$SimplePool<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sStringBuilder:Lmiuix/core/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$SimplePool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalConsonantPinyins:[Ljava/lang/String;

.field private mAdditionalConsonantUnicodes:[Ljava/lang/String;

.field private mConsonantPinyins:[Ljava/lang/String;

.field private mConsonantUnicodes:[Ljava/lang/String;

.field private mDependentVowelSignPinyins:[Ljava/lang/String;

.field private mDependentVowelSignUnicodes:[Ljava/lang/String;

.field private mDoubleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndependentVowelPinyins:[Ljava/lang/String;

.field private mIndependentVowelUnicodes:[Ljava/lang/String;

.field private mSingleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTripleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVariousSignPinyins:[Ljava/lang/String;

.field private mVariousSignUnicodes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 332
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;

    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;-><init>()V

    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 340
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$2;

    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$2;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    .line 352
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$3;

    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$3;-><init>()V

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->initUnicodeAndPinyin()V

    .line 369
    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mapUnicodeToPinyin()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/pinyin/utilities/HindiPinyinConverter$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;-><init>()V

    return-void
.end method

.method private static varargs concat([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 496
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 497
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 498
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 501
    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getInstance()Lmiuix/pinyin/utilities/HindiPinyinConverter;
    .locals 1

    .line 376
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiuix/core/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;

    return-object v0
.end method

.method private initUnicodeAndPinyin()V
    .locals 24

    move-object/from16 v0, p0

    const/16 v1, 0xc

    new-array v2, v1, [Ljava/lang/String;

    .line 70
    iput-object v2, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 71
    iput-object v2, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    const/16 v2, 0xf

    new-array v3, v2, [Ljava/lang/String;

    .line 73
    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    .line 74
    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    const/16 v3, 0x23

    new-array v4, v3, [Ljava/lang/String;

    .line 76
    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    .line 77
    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/String;

    .line 79
    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    .line 80
    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    .line 82
    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/String;

    .line 83
    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    .line 85
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 86
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 87
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    .line 92
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    const-string v6, "\u0905"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "\u0906"

    const/4 v8, 0x1

    .line 93
    aput-object v6, v5, v8

    const-string v6, "\u0907"

    const/4 v9, 0x2

    .line 94
    aput-object v6, v5, v9

    const-string v6, "\u0908"

    .line 95
    aput-object v6, v5, v4

    const-string v6, "\u0909"

    const/4 v10, 0x4

    .line 96
    aput-object v6, v5, v10

    const-string v6, "\u090a"

    const/4 v11, 0x5

    .line 97
    aput-object v6, v5, v11

    const-string v6, "\u090b"

    const/4 v12, 0x6

    .line 98
    aput-object v6, v5, v12

    const-string v6, "\u090f"

    const/4 v13, 0x7

    .line 99
    aput-object v6, v5, v13

    const-string v6, "\u0910"

    .line 100
    aput-object v6, v5, v3

    const-string v6, "\u0911"

    const/16 v14, 0x9

    .line 101
    aput-object v6, v5, v14

    const-string v6, "\u0913"

    const/16 v15, 0xa

    .line 102
    aput-object v6, v5, v15

    const-string v6, "\u0914"

    const/16 v16, 0xb

    .line 103
    aput-object v6, v5, v16

    .line 105
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    const-string v6, "a"

    aput-object v6, v5, v7

    const-string v6, "aa"

    .line 106
    aput-object v6, v5, v8

    const-string v17, "i"

    .line 107
    aput-object v17, v5, v9

    const-string v18, "ee"

    .line 108
    aput-object v18, v5, v4

    const-string v18, "u"

    .line 109
    aput-object v18, v5, v10

    const-string v18, "oo"

    .line 110
    aput-object v18, v5, v11

    const-string v18, "r"

    .line 111
    aput-object v18, v5, v12

    const-string v19, "e"

    .line 112
    aput-object v19, v5, v13

    const-string v20, "ai"

    .line 113
    aput-object v20, v5, v3

    const-string v20, "o"

    .line 114
    aput-object v20, v5, v14

    .line 115
    aput-object v20, v5, v15

    const-string v21, "au"

    .line 116
    aput-object v21, v5, v16

    .line 121
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    const-string v21, "\u093e"

    aput-object v21, v5, v7

    const-string v21, "\u093f"

    .line 122
    aput-object v21, v5, v8

    const-string v21, "\u0940"

    .line 123
    aput-object v21, v5, v9

    const-string v21, "\u0941"

    .line 124
    aput-object v21, v5, v4

    const-string v21, "\u0942"

    .line 125
    aput-object v21, v5, v10

    const-string v21, "\u0943"

    .line 126
    aput-object v21, v5, v11

    const-string v21, "\u0944"

    .line 127
    aput-object v21, v5, v12

    const-string v21, "\u0945"

    .line 128
    aput-object v21, v5, v13

    const-string v21, "\u0947"

    .line 129
    aput-object v21, v5, v3

    const-string v21, "\u0948"

    .line 130
    aput-object v21, v5, v14

    const-string v21, "\u0949"

    .line 131
    aput-object v21, v5, v15

    const-string v21, "\u094b"

    .line 132
    aput-object v21, v5, v16

    const-string v21, "\u094c"

    .line 133
    aput-object v21, v5, v1

    const-string v21, "\u094e"

    const/16 v22, 0xd

    .line 134
    aput-object v21, v5, v22

    const-string v21, "\u094f"

    const/16 v23, 0xe

    .line 135
    aput-object v21, v5, v23

    .line 137
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aput-object v6, v5, v7

    .line 138
    aput-object v17, v5, v8

    const-string v6, "ee"

    .line 139
    aput-object v6, v5, v9

    const-string v6, "u"

    .line 140
    aput-object v6, v5, v4

    const-string v6, "oo"

    .line 141
    aput-object v6, v5, v10

    .line 142
    aput-object v18, v5, v11

    const-string v6, "R"

    .line 143
    aput-object v6, v5, v12

    .line 144
    aput-object v19, v5, v13

    .line 145
    aput-object v19, v5, v3

    const-string v6, "ai"

    .line 146
    aput-object v6, v5, v14

    .line 147
    aput-object v20, v5, v15

    .line 148
    aput-object v20, v5, v16

    const-string v6, "au"

    .line 149
    aput-object v6, v5, v1

    .line 150
    aput-object v19, v5, v22

    const-string v6, "aw"

    .line 151
    aput-object v6, v5, v23

    .line 156
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    const-string v6, "\u0915"

    aput-object v6, v5, v7

    const-string v6, "\u0916"

    .line 157
    aput-object v6, v5, v8

    const-string v6, "\u0917"

    .line 158
    aput-object v6, v5, v9

    const-string v6, "\u0918"

    .line 159
    aput-object v6, v5, v4

    const-string v6, "\u0919"

    .line 160
    aput-object v6, v5, v10

    const-string v6, "\u091a"

    .line 161
    aput-object v6, v5, v11

    const-string v6, "\u091b"

    .line 162
    aput-object v6, v5, v12

    const-string v6, "\u091c"

    .line 163
    aput-object v6, v5, v13

    const-string v6, "\u091d"

    .line 164
    aput-object v6, v5, v3

    const-string v6, "\u091e"

    .line 165
    aput-object v6, v5, v14

    const-string v6, "\u091f"

    .line 166
    aput-object v6, v5, v15

    const-string v6, "\u0920"

    .line 167
    aput-object v6, v5, v16

    const-string v6, "\u0921"

    .line 168
    aput-object v6, v5, v1

    const-string v6, "\u0922"

    .line 169
    aput-object v6, v5, v22

    const-string v6, "\u0923"

    .line 170
    aput-object v6, v5, v23

    const-string v6, "\u0924"

    .line 171
    aput-object v6, v5, v2

    const/16 v6, 0x10

    const-string v17, "\u0925"

    .line 172
    aput-object v17, v5, v6

    const/16 v6, 0x11

    const-string v17, "\u0926"

    .line 173
    aput-object v17, v5, v6

    const/16 v6, 0x12

    const-string v17, "\u0927"

    .line 174
    aput-object v17, v5, v6

    const/16 v6, 0x13

    const-string v17, "\u0928"

    .line 175
    aput-object v17, v5, v6

    const/16 v6, 0x14

    const-string v17, "\u0929"

    .line 176
    aput-object v17, v5, v6

    const/16 v6, 0x15

    const-string v17, "\u092a"

    .line 177
    aput-object v17, v5, v6

    const/16 v6, 0x16

    const-string v17, "\u092b"

    .line 178
    aput-object v17, v5, v6

    const/16 v6, 0x17

    const-string v17, "\u092c"

    .line 179
    aput-object v17, v5, v6

    const/16 v6, 0x18

    const-string v17, "\u092d"

    .line 180
    aput-object v17, v5, v6

    const/16 v6, 0x19

    const-string v17, "\u092e"

    .line 181
    aput-object v17, v5, v6

    const/16 v6, 0x1a

    const-string v17, "\u092f"

    .line 182
    aput-object v17, v5, v6

    const/16 v6, 0x1b

    const-string v17, "\u0930"

    .line 183
    aput-object v17, v5, v6

    const/16 v6, 0x1c

    const-string v17, "\u0931"

    .line 184
    aput-object v17, v5, v6

    const/16 v6, 0x1d

    const-string v17, "\u0932"

    .line 185
    aput-object v17, v5, v6

    const/16 v6, 0x1e

    const-string v17, "\u0935"

    .line 186
    aput-object v17, v5, v6

    const/16 v6, 0x1f

    const-string v17, "\u0936"

    .line 187
    aput-object v17, v5, v6

    const/16 v6, 0x20

    const-string v17, "\u0937"

    .line 188
    aput-object v17, v5, v6

    const/16 v6, 0x21

    const-string v17, "\u0938"

    .line 189
    aput-object v17, v5, v6

    const/16 v6, 0x22

    const-string v17, "\u0939"

    .line 190
    aput-object v17, v5, v6

    .line 192
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    const-string v6, "k"

    aput-object v6, v5, v7

    const-string v6, "kh"

    .line 193
    aput-object v6, v5, v8

    const-string v6, "g"

    .line 194
    aput-object v6, v5, v9

    const-string v6, "gh"

    .line 195
    aput-object v6, v5, v4

    const-string v6, "ng"

    .line 196
    aput-object v6, v5, v10

    const-string v6, "c"

    .line 197
    aput-object v6, v5, v11

    const-string v6, "ch"

    .line 198
    aput-object v6, v5, v12

    const-string v6, "j"

    .line 199
    aput-object v6, v5, v13

    const-string v6, "jh"

    .line 200
    aput-object v6, v5, v3

    const-string v3, "ny"

    .line 201
    aput-object v3, v5, v14

    const-string v3, "T"

    .line 202
    aput-object v3, v5, v15

    const-string v3, "Th"

    .line 203
    aput-object v3, v5, v16

    const-string v3, "D"

    .line 204
    aput-object v3, v5, v1

    const-string v1, "Dh"

    .line 205
    aput-object v1, v5, v22

    const-string v1, "N"

    .line 206
    aput-object v1, v5, v23

    const-string v1, "t"

    .line 207
    aput-object v1, v5, v2

    const/16 v1, 0x10

    const-string v2, "th"

    .line 208
    aput-object v2, v5, v1

    const/16 v1, 0x11

    const-string v2, "d"

    .line 209
    aput-object v2, v5, v1

    const/16 v1, 0x12

    const-string v2, "dh"

    .line 210
    aput-object v2, v5, v1

    const/16 v1, 0x13

    const-string v2, "n"

    .line 211
    aput-object v2, v5, v1

    const/16 v1, 0x14

    const-string v2, "Nn"

    .line 212
    aput-object v2, v5, v1

    const/16 v1, 0x15

    const-string v2, "p"

    .line 213
    aput-object v2, v5, v1

    const/16 v1, 0x16

    const-string v2, "ph"

    .line 214
    aput-object v2, v5, v1

    const/16 v1, 0x17

    const-string v2, "b"

    .line 215
    aput-object v2, v5, v1

    const/16 v1, 0x18

    const-string v2, "bh"

    .line 216
    aput-object v2, v5, v1

    const/16 v1, 0x19

    const-string v2, "m"

    .line 217
    aput-object v2, v5, v1

    const/16 v1, 0x1a

    const-string v2, "y"

    .line 218
    aput-object v2, v5, v1

    const/16 v1, 0x1b

    .line 219
    aput-object v18, v5, v1

    const/16 v1, 0x1c

    const-string v2, "R"

    .line 220
    aput-object v2, v5, v1

    const/16 v1, 0x1d

    const-string v2, "l"

    .line 221
    aput-object v2, v5, v1

    const/16 v1, 0x1e

    const-string v2, "v"

    .line 222
    aput-object v2, v5, v1

    const/16 v1, 0x1f

    const-string v2, "sh"

    .line 223
    aput-object v2, v5, v1

    const/16 v1, 0x20

    const-string v2, "S"

    .line 224
    aput-object v2, v5, v1

    const/16 v1, 0x21

    const-string v2, "s"

    .line 225
    aput-object v2, v5, v1

    const/16 v1, 0x22

    const-string v2, "h"

    .line 226
    aput-object v2, v5, v1

    .line 231
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    const-string v2, "\u0958"

    aput-object v2, v1, v7

    const-string v2, "\u0959"

    .line 232
    aput-object v2, v1, v8

    const-string v2, "\u095a"

    .line 233
    aput-object v2, v1, v9

    const-string v2, "\u095b"

    .line 234
    aput-object v2, v1, v4

    const-string v2, "\u095c"

    .line 235
    aput-object v2, v1, v10

    const-string v2, "\u095d"

    .line 236
    aput-object v2, v1, v11

    const-string v2, "\u095e"

    .line 237
    aput-object v2, v1, v12

    const-string v2, "\u095f"

    .line 238
    aput-object v2, v1, v13

    .line 240
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    const-string v2, "q"

    aput-object v2, v1, v7

    const-string v2, "khh"

    .line 241
    aput-object v2, v1, v8

    const-string v2, "ghh"

    .line 242
    aput-object v2, v1, v9

    const-string v2, "z"

    .line 243
    aput-object v2, v1, v4

    const-string v2, "Ddh"

    .line 244
    aput-object v2, v1, v10

    const-string v2, "rh"

    .line 245
    aput-object v2, v1, v11

    const-string v2, "f"

    .line 246
    aput-object v2, v1, v12

    const-string v2, "Y"

    .line 247
    aput-object v2, v1, v13

    .line 252
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    const-string v2, "\u0901"

    aput-object v2, v1, v7

    const-string v2, "\u0902"

    .line 253
    aput-object v2, v1, v8

    const-string v2, "\u0903"

    .line 254
    aput-object v2, v1, v9

    .line 256
    iget-object v0, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    const-string v1, "an"

    aput-object v1, v0, v7

    const-string v1, "an"

    .line 257
    aput-object v1, v0, v8

    const-string v1, "ah"

    .line 258
    aput-object v1, v0, v9

    return-void
.end method

.method private mapUnicodeToPinyin()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x23

    if-ge v1, v2, :cond_0

    .line 264
    iget-object v2, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v3, 0xc

    if-ge v1, v3, :cond_1

    .line 269
    iget-object v3, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 270
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 271
    iget-object v5, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    const/16 v4, 0x8

    if-ge v1, v4, :cond_2

    .line 274
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 275
    iget-object v5, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 276
    iget-object v6, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    const/4 v5, 0x3

    const/16 v6, 0xf

    if-ge v1, v2, :cond_5

    move v7, v0

    :goto_4
    if-ge v7, v6, :cond_3

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 284
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    move v6, v0

    :goto_5
    if-ge v6, v5, :cond_4

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 289
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_6
    if-ge v1, v4, :cond_8

    move v7, v0

    :goto_7
    if-ge v7, v6, :cond_6

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 296
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_6
    move v7, v0

    :goto_8
    if-ge v7, v5, :cond_7

    .line 299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_9

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u094d"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 306
    iget-object v7, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v7, v7, v1

    .line 307
    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_d

    move v3, v0

    :goto_c
    if-ge v3, v6, :cond_c

    move v4, v0

    :goto_d
    if-ge v4, v5, :cond_b

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 323
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 329
    :cond_d
    iget-object p0, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    const-string v0, "\u0905\u0902"

    const-string v1, "am"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static stringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 506
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 508
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 509
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v2, v4

    :cond_0
    const/16 v4, 0x80

    if-ge v3, v4, :cond_1

    .line 515
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 517
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 521
    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 422
    sget-object v4, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v4}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    const-string v7, "HindiPinyinConverter"

    if-ge v6, v5, :cond_a

    .line 424
    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 425
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int v9, v6, v8

    .line 426
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    if-ge v9, v5, :cond_0

    .line 432
    invoke-static {v1, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 433
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int v11, v9, v8

    .line 434
    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_0
    move-object v11, v10

    .line 436
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 438
    iget-object v7, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 439
    iget-object v7, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    :cond_1
    :goto_2
    move v6, v9

    goto/16 :goto_5

    :cond_2
    add-int v12, v9, v8

    if-ge v12, v5, :cond_3

    .line 445
    invoke-static {v1, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 446
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int v13, v12, v8

    .line 447
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_3
    move-object v13, v10

    .line 449
    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 451
    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 452
    iget-object v14, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 453
    iget-object v6, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    goto :goto_4

    .line 455
    :cond_4
    iget-object v8, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 456
    iget-object v7, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    goto :goto_2

    .line 460
    :cond_5
    filled-new-array {v6, v11, v13}, [Ljava/lang/String;

    move-result-object v8

    .line 461
    invoke-static {v8}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v11, v13, v8}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "Ignore unknown hindi: %s%s%s %s"

    .line 460
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 465
    :cond_6
    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 466
    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 467
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 468
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    add-int/2addr v12, v8

    move v6, v12

    goto :goto_5

    .line 470
    :cond_7
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 471
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    :goto_4
    add-int/2addr v9, v8

    goto/16 :goto_2

    .line 473
    :cond_8
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 474
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_2

    .line 478
    :cond_9
    filled-new-array {v6, v11, v13}, [Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v11, v13, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "Ignore unknown hindi: \'%s%s%s\' \'%s\'"

    .line 478
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 483
    :goto_5
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 488
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v1, v4}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 491
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hindiToPinyin(): using time %d ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 385
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 386
    invoke-virtual {p0, p1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 387
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "ee"

    .line 389
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ii"

    .line 390
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "oo"

    .line 393
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "uu"

    .line 394
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p1, "v"

    .line 397
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "w"

    .line 398
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_2
    sget-object p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {p0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "aa"

    .line 403
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array p1, v2, [Ljava/lang/String;

    .line 408
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 409
    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 410
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p1
.end method
