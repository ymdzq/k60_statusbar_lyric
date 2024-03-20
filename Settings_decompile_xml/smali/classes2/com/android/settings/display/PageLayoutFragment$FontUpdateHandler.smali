.class Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;
.super Landroid/os/Handler;
.source "PageLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PageLayoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontUpdateHandler"
.end annotation


# instance fields
.field private fragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/display/PageLayoutFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/display/PageLayoutFragment;",
            ">;)V"
        }
    .end annotation

    .line 959
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 960
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 965
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/PageLayoutFragment;

    if-eqz v0, :cond_14

    .line 967
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    .line 969
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "fontList"

    .line 970
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 971
    invoke-static {v0, p1}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fputoriginFontModelList(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;)V

    if-eqz p1, :cond_13

    .line 972
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 975
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    .line 977
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "PageLayoutFragment"

    const-string v7, "10"

    if-ge v4, v5, :cond_6

    .line 978
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/display/LocalFontModel;

    if-nez v4, :cond_2

    .line 979
    invoke-virtual {v5}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 980
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PageLayoutFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$smgetFontTitle()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 981
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage: set defaultFont"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual {v5, v7}, Lcom/android/settings/display/LocalFontModel;->setTitle(Ljava/lang/String;)V

    .line 991
    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/display/LocalFontModel;->isVariable()Z

    move-result v7

    const-string v8, "b004d74e-5c49-430c-bb6a-18ed5d2d33e4"

    if-eqz v7, :cond_3

    .line 992
    invoke-virtual {v5}, Lcom/android/settings/display/LocalFontModel;->isUsing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 993
    invoke-virtual {v5}, Lcom/android/settings/display/LocalFontModel;->isMisans()Z

    move-result v7

    if-nez v7, :cond_3

    .line 994
    invoke-virtual {v5}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 995
    :cond_3
    invoke-virtual {v5}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmLanProMiui13FontIsExists(Lcom/android/settings/display/PageLayoutFragment;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 996
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmLanProMiui13FontIsExists(Lcom/android/settings/display/PageLayoutFragment;)Z

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1000
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1002
    :cond_6
    new-instance p1, Lcom/android/settings/display/LocalFontModel;

    const-string v4, "-1000"

    const/4 v5, 0x0

    invoke-direct {p1, v4, v5, v5, v3}, Lcom/android/settings/display/LocalFontModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v4, v3

    move v8, v4

    .line 1003
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 1004
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/display/LocalFontModel;

    .line 1005
    invoke-virtual {v9}, Lcom/android/settings/display/LocalFontModel;->isUsing()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1006
    invoke-virtual {v9}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fputmCurrentFontId(Lcom/android/settings/display/PageLayoutFragment;Ljava/lang/String;)V

    .line 1007
    invoke-static {v0, v9}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fputmCurrentFont(Lcom/android/settings/display/PageLayoutFragment;Lcom/android/settings/display/LocalFontModel;)V

    .line 1008
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmCurrentFontId(Lcom/android/settings/display/PageLayoutFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fputmLastFontId(Lcom/android/settings/display/PageLayoutFragment;Ljava/lang/String;)V

    move v8, v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1013
    :cond_8
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmCurrentFont(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/LocalFontModel;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1014
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1015
    new-instance v4, Lcom/android/settings/display/LocalFontModel;

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PageLayoutFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$smgetFontTitle()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v7, v9, v5, v2}, Lcom/android/settings/display/LocalFontModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/display/LocalFontModel;

    invoke-static {v0, v4}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fputmCurrentFont(Lcom/android/settings/display/PageLayoutFragment;Lcom/android/settings/display/LocalFontModel;)V

    .line 1017
    invoke-static {v0, v7}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fputmLastFontId(Lcom/android/settings/display/PageLayoutFragment;Ljava/lang/String;)V

    :cond_9
    const/4 v4, 0x2

    if-lt v8, v4, :cond_a

    .line 1021
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/display/LocalFontModel;

    .line 1022
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1023
    invoke-interface {v1, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1025
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$sfgetMAX_FONT_COUNT()I

    move-result v5

    if-le v4, v5, :cond_b

    .line 1026
    invoke-static {}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$sfgetMAX_FONT_COUNT()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 1028
    :cond_b
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1029
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_c
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmCurrentFont(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/LocalFontModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->isVariable()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1033
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetfontWeightLinearLayout(Lcom/android/settings/display/PageLayoutFragment;)Landroid/view/View;

    move-result-object p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1034
    iget-object p1, v0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1035
    iget-object p1, v0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1}, Lcom/android/settings/display/FontWeightAdjustView;->getFontWeightChangeListener()Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;

    move-result-object p1

    if-nez p1, :cond_d

    .line 1036
    iget-object p1, v0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    new-instance v3, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-virtual {p1, v3}, Lcom/android/settings/display/FontWeightAdjustView;->setFontWeightChangeListener(Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;)V

    .line 1038
    :cond_d
    iget-object p1, v0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmLastFontWeight(Lcom/android/settings/display/PageLayoutFragment;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1039
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmLastFontWeight(Lcom/android/settings/display/PageLayoutFragment;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/display/PageLayoutFragment;->onWeightChange(I)V

    goto :goto_3

    .line 1040
    :cond_e
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmCurrentFont(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/LocalFontModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_11

    .line 1042
    :cond_f
    iget-boolean p1, v0, Lcom/android/settings/display/PageLayoutFragment;->isPrimaryUser:Z

    if-eqz p1, :cond_10

    .line 1043
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetfontWeightLinearLayout(Lcom/android/settings/display/PageLayoutFragment;)Landroid/view/View;

    move-result-object p1

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1045
    :cond_10
    iget-object p1, v0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    const/16 v4, 0x32

    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1046
    iget-object p1, v0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1048
    :cond_11
    :goto_3
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetlocalFontModelList(Lcom/android/settings/display/PageLayoutFragment;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$mcompareOldAndNewFontList(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    xor-int/2addr p1, v2

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: needShowNewFontList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_12

    .line 1051
    invoke-static {v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fputlocalFontModelList(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;)V

    .line 1052
    new-instance p1, Lcom/android/settings/display/FontAdapter;

    invoke-direct {p1}, Lcom/android/settings/display/FontAdapter;-><init>()V

    invoke-static {v0, p1}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fputfontAdapter(Lcom/android/settings/display/PageLayoutFragment;Lcom/android/settings/display/FontAdapter;)V

    .line 1053
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetfontAdapter(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/FontAdapter;

    move-result-object p1

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PageLayoutFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/display/FontAdapter;->setContext(Landroid/content/Context;)V

    .line 1054
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetfontAdapter(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/FontAdapter;

    move-result-object p1

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetlocalFontModelList(Lcom/android/settings/display/PageLayoutFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/display/FontAdapter;->setDataList(Ljava/util/List;)V

    .line 1055
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetfontAdapter(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/FontAdapter;

    move-result-object p1

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmCurrentFontId(Lcom/android/settings/display/PageLayoutFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/display/FontAdapter;->setCurrentFontId(Ljava/lang/String;)V

    .line 1056
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetfontAdapter(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/FontAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/display/FontAdapter;->setFontSelectListener(Lcom/android/settings/display/FontAdapter$FontSelectListener;)V

    .line 1057
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetoriginFontModelList(Lcom/android/settings/display/PageLayoutFragment;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmCurrentFontId(Lcom/android/settings/display/PageLayoutFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$msetLocalFontModelListCacahe(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;->showNewFontList()V

    .line 1060
    :cond_12
    invoke-static {}, Lcom/android/settings/display/font/FontWeightUtils;->updateVarFont()V

    .line 1061
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$mupdateBubbleAndHintText(Lcom/android/settings/display/PageLayoutFragment;)V

    goto :goto_5

    .line 973
    :cond_13
    :goto_4
    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetrecyclerView(Lcom/android/settings/display/PageLayoutFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_14
    :goto_5
    return-void
.end method

.method showNewFontList()V
    .locals 4

    .line 1071
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/PageLayoutFragment;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1072
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1073
    new-instance v2, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$1;-><init>(Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1081
    new-instance v2, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;-><init>(Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1116
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method
