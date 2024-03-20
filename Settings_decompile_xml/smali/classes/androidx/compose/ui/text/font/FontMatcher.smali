.class public final Landroidx/compose/ui/text/font/FontMatcher;
.super Ljava/lang/Object;
.source "FontMatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontMatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontMatcher.kt\nandroidx/compose/ui/text/font/FontMatcher\n+ 2 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n102#1,34:189\n102#1,34:234\n108#1,28:279\n108#1,28:318\n35#2,3:166\n38#2,2:173\n40#2:176\n35#2,3:177\n38#2,2:184\n40#2:187\n35#2,3:223\n38#2,2:230\n40#2:233\n35#2,3:268\n38#2,2:275\n40#2:278\n35#2,3:307\n38#2,2:314\n40#2:317\n35#2,3:346\n38#2,2:353\n40#2:356\n35#2,3:357\n38#2,2:364\n40#2:367\n35#2,3:368\n38#2,2:375\n40#2:378\n33#3,4:169\n38#3:175\n33#3,4:180\n38#3:186\n33#3,4:226\n38#3:232\n33#3,4:271\n38#3:277\n33#3,4:310\n38#3:316\n33#3,4:349\n38#3:355\n33#3,4:360\n38#3:366\n33#3,4:371\n38#3:377\n1#4:188\n*S KotlinDebug\n*F\n+ 1 FontMatcher.kt\nandroidx/compose/ui/text/font/FontMatcher\n*L\n65#1:189,34\n71#1:234,34\n80#1:279,28\n87#1:318,28\n49#1:166,3\n49#1:173,2\n49#1:176\n57#1:177,3\n57#1:184,2\n57#1:187\n65#1:223,3\n65#1:230,2\n65#1:233\n71#1:268,3\n71#1:275,2\n71#1:278\n80#1:307,3\n80#1:314,2\n80#1:317\n87#1:346,3\n87#1:353,2\n87#1:356\n135#1:357,3\n135#1:364,2\n135#1:367\n135#1:368,3\n135#1:375,2\n135#1:378\n49#1:169,4\n49#1:175\n57#1:180,4\n57#1:186\n65#1:226,4\n65#1:232\n71#1:271,4\n71#1:277\n80#1:310,4\n80#1:316\n87#1:349,4\n87#1:355\n135#1:360,4\n135#1:366\n135#1:371,4\n135#1:377\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matchFont-RetOiIg(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;"
        }
    .end annotation

    const-string p0, "fontList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fontWeight"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 38
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 49
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v6

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v5

    invoke-static {v5, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    .line 38
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    return-object p0

    .line 36
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 38
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 57
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v4

    invoke-static {v4, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 38
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 57
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    move-object p1, p0

    .line 60
    :goto_3
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW400()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result p3

    const/4 v0, 0x0

    if-gez p3, :cond_f

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    move-object p3, v0

    move v2, v1

    :goto_4
    if-ge v2, p0, :cond_c

    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 112
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    .line 115
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_8

    if-eqz v0, :cond_7

    .line 116
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_a

    :cond_7
    move-object v0, v3

    goto :goto_5

    .line 119
    :cond_8
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_b

    if-eqz p3, :cond_9

    .line 120
    invoke-virtual {v3, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_a

    :cond_9
    move-object p3, v3

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    move-object p3, v3

    move-object v0, p3

    :cond_c
    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    move-object p3, v0

    .line 36
    :goto_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :goto_7
    if-ge v1, p2, :cond_2c

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 38
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/text/font/Font;

    .line 135
    invoke-interface {v2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 38
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 67
    :cond_f
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result p3

    if-lez p3, :cond_18

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    move-object p3, v0

    move v2, v1

    :goto_8
    if-ge v2, p0, :cond_15

    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 112
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    .line 115
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_11

    if-eqz v0, :cond_10

    .line 116
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_13

    :cond_10
    move-object v0, v3

    goto :goto_9

    .line 119
    :cond_11
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_14

    if-eqz p3, :cond_12

    .line 120
    invoke-virtual {v3, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_13

    :cond_12
    move-object p3, v3

    :cond_13
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    move-object p3, v3

    move-object v0, p3

    :cond_15
    if-nez p3, :cond_16

    move-object p3, v0

    .line 36
    :cond_16
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :goto_a
    if-ge v1, p2, :cond_2c

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 38
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/text/font/Font;

    .line 135
    invoke-interface {v2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 38
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 84
    :cond_18
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    move-object v3, v0

    move-object v4, v3

    move v2, v1

    :goto_b
    if-ge v2, p3, :cond_1f

    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 112
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    if-eqz p0, :cond_19

    .line 114
    invoke-virtual {v5, p0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-gtz v6, :cond_1d

    .line 115
    :cond_19
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-gez v6, :cond_1b

    if-eqz v3, :cond_1a

    .line 116
    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_1d

    :cond_1a
    move-object v3, v5

    goto :goto_c

    .line 119
    :cond_1b
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_1e

    if-eqz v4, :cond_1c

    .line 120
    invoke-virtual {v5, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-gez v6, :cond_1d

    :cond_1c
    move-object v4, v5

    :cond_1d
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    move-object v3, v5

    move-object v4, v3

    :cond_1f
    if-nez v4, :cond_20

    goto :goto_d

    :cond_20
    move-object v3, v4

    .line 36
    :goto_d
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    move v2, v1

    :goto_e
    if-ge v2, p3, :cond_22

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 38
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 135
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 38
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 86
    :cond_22
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 90
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    move-object v2, v0

    move v3, v1

    :goto_f
    if-ge v3, p3, :cond_29

    .line 111
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 112
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    if-eqz p0, :cond_23

    .line 113
    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-ltz v5, :cond_27

    .line 115
    :cond_23
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_25

    if-eqz v0, :cond_24

    .line 116
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_27

    :cond_24
    move-object v0, v4

    goto :goto_10

    .line 119
    :cond_25
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_28

    if-eqz v2, :cond_26

    .line 120
    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_27

    :cond_26
    move-object v2, v4

    :cond_27
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_28
    move-object v0, v4

    move-object v2, v0

    :cond_29
    if-nez v2, :cond_2a

    goto :goto_11

    :cond_2a
    move-object v0, v2

    .line 36
    :goto_11
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :goto_12
    if-ge v1, p2, :cond_2c

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 38
    move-object v2, p3

    check-cast v2, Landroidx/compose/ui/text/font/Font;

    .line 135
    invoke-interface {v2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 38
    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2c
    return-object p0
.end method
