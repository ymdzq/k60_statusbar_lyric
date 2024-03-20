.class public final Landroidx/compose/material3/Strings_androidKt;
.super Ljava/lang/Object;
.source "Strings.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.android.kt\nandroidx/compose/material3/Strings_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,156:1\n76#2:157\n76#2:158\n76#2:159\n*S KotlinDebug\n*F\n+ 1 Strings.android.kt\nandroidx/compose/material3/Strings_androidKt\n*L\n30#1:157\n31#1:158\n153#1:159\n*E\n"
.end annotation


# direct methods
.method public static final getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;
    .locals 3

    .line 29
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.getString (Strings.android.kt:28)"

    const v2, -0xa892f16

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 30
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    .line 76
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    .line 76
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 33
    sget-object p2, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getNavigationMenu-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Landroidx/compose/ui/R$string;->navigation_menu:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(R.string.navigation_menu)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getCloseDrawer-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Landroidx/compose/ui/R$string;->close_drawer:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(R.string.close_drawer)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getCloseSheet-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p0, Landroidx/compose/ui/R$string;->close_sheet:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(R.string.close_sheet)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 36
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDefaultErrorMessage-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p0, Landroidx/compose/ui/R$string;->default_error_message:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(R.st\u2026ng.default_error_message)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 37
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getExposedDropdownMenu-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p0, Landroidx/compose/ui/R$string;->dropdown_menu:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(R.string.dropdown_menu)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getSliderRangeStart-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_6

    sget p0, Landroidx/compose/ui/R$string;->range_start:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(R.string.range_start)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getSliderRangeEnd-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p0, Landroidx/compose/ui/R$string;->range_end:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(R.string.range_end)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 40
    :cond_7
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDialog-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p0, Landroidx/compose/material3/R$string;->dialog:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(andr\u2026aterial3.R.string.dialog)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    :cond_8
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getMenuExpanded-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p0, Landroidx/compose/material3/R$string;->expanded:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(andr\u2026erial3.R.string.expanded)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 42
    :cond_9
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getMenuCollapsed-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_a

    sget p0, Landroidx/compose/material3/R$string;->collapsed:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(andr\u2026rial3.R.string.collapsed)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :cond_a
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getSnackbarDismiss-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 44
    sget p0, Landroidx/compose/material3/R$string;->snackbar_dismiss:I

    .line 43
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026nackbar_dismiss\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :cond_b
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getSearchBarSearch-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    sget p0, Landroidx/compose/material3/R$string;->search_bar_search:I

    .line 47
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026arch_bar_search\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :cond_c
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getSuggestionsAvailable-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    sget p0, Landroidx/compose/material3/R$string;->suggestions_available:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(andr\u2026ng.suggestions_available)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_d
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerTitle-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55
    sget p0, Landroidx/compose/material3/R$string;->date_picker_title:I

    .line 54
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026te_picker_title\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_e
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerHeadline-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 59
    sget p0, Landroidx/compose/material3/R$string;->date_picker_headline:I

    .line 58
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026picker_headline\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_f
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerYearPickerPaneTitle-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    sget p0, Landroidx/compose/material3/R$string;->date_picker_year_picker_pane_title:I

    .line 62
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026cker_pane_title\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_10
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerSwitchToYearSelection-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 67
    sget p0, Landroidx/compose/material3/R$string;->date_picker_switch_to_year_selection:I

    .line 66
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026_year_selection\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :cond_11
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerSwitchToDaySelection-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 71
    sget p0, Landroidx/compose/material3/R$string;->date_picker_switch_to_day_selection:I

    .line 70
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026o_day_selection\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :cond_12
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerSwitchToNextMonth-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 75
    sget p0, Landroidx/compose/material3/R$string;->date_picker_switch_to_next_month:I

    .line 74
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026h_to_next_month\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_13
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerSwitchToPreviousMonth-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 79
    sget p0, Landroidx/compose/material3/R$string;->date_picker_switch_to_previous_month:I

    .line 78
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026_previous_month\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_14
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerNavigateToYearDescription-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 83
    sget p0, Landroidx/compose/material3/R$string;->date_picker_navigate_to_year_description:I

    .line 82
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026ear_description\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_15
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerHeadlineDescription-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    const-string/jumbo v1, "resources.getString(\n   \u2026ine_description\n        )"

    if-eqz v0, :cond_16

    .line 87
    sget p0, Landroidx/compose/material3/R$string;->date_picker_headline_description:I

    .line 86
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_16
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerNoSelectionDescription-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 91
    sget p0, Landroidx/compose/material3/R$string;->date_picker_no_selection_description:I

    .line 90
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026ion_description\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_17
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerTodayDescription-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 94
    sget p0, Landroidx/compose/material3/R$string;->date_picker_today_description:I

    .line 93
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026day_description\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_18
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDateInputTitle-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 97
    sget p0, Landroidx/compose/material3/R$string;->date_input_title:I

    .line 96
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026ate_input_title\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_19
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDateInputHeadline-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 100
    sget p0, Landroidx/compose/material3/R$string;->date_input_headline:I

    .line 99
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026_input_headline\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_1a
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDateInputLabel-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 103
    sget p0, Landroidx/compose/material3/R$string;->date_input_label:I

    .line 102
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026ate_input_label\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_1b
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDateInputHeadlineDescription-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 106
    sget p0, Landroidx/compose/material3/R$string;->date_input_headline_description:I

    .line 105
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_1c
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDateInputNoInputDescription-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 109
    sget p0, Landroidx/compose/material3/R$string;->date_input_no_input_description:I

    .line 108
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026put_description\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_1d
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDateInputInvalidNotAllowed-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 112
    sget p0, Landroidx/compose/material3/R$string;->date_input_invalid_not_allowed:I

    .line 111
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026lid_not_allowed\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_1e
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDateInputInvalidForPattern-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 115
    sget p0, Landroidx/compose/material3/R$string;->date_input_invalid_for_pattern:I

    .line 114
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026lid_for_pattern\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_1f
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDateInputInvalidYearRange-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 118
    sget p0, Landroidx/compose/material3/R$string;->date_input_invalid_year_range:I

    .line 117
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026alid_year_range\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_20
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerSwitchToCalendarMode-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 121
    sget p0, Landroidx/compose/material3/R$string;->date_picker_switch_to_calendar_mode:I

    .line 120
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026o_calendar_mode\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_21
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getDatePickerSwitchToInputMode-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 124
    sget p0, Landroidx/compose/material3/R$string;->date_picker_switch_to_input_mode:I

    .line 123
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026h_to_input_mode\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_22
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getTooltipLongPressLabel-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 127
    sget p0, Landroidx/compose/material3/R$string;->tooltip_long_press_label:I

    .line 126
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026ong_press_label\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_23
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getTimePickerAM-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 130
    sget p0, Landroidx/compose/material3/R$string;->time_picker_am:I

    .line 129
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026.R.string.time_picker_am)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_24
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getTimePickerPM-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 132
    sget p0, Landroidx/compose/material3/R$string;->time_picker_pm:I

    .line 131
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026.R.string.time_picker_pm)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_25
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getTimePickerPeriodToggle-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 134
    sget p0, Landroidx/compose/material3/R$string;->time_picker_period_toggle_description:I

    .line 133
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026eriod_toggle_description)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_26
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getTimePickerMinuteSelection-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 136
    sget p0, Landroidx/compose/material3/R$string;->time_picker_minute_selection:I

    .line 135
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026_picker_minute_selection)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_27
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getTimePickerHourSelection-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 138
    sget p0, Landroidx/compose/material3/R$string;->time_picker_hour_selection:I

    .line 137
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026me_picker_hour_selection)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_28
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getTimePickerHourSuffix-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 140
    sget p0, Landroidx/compose/material3/R$string;->time_picker_hour_suffix:I

    .line 139
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026.time_picker_hour_suffix)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_29
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getTimePickerMinuteSuffix-adMyvUU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 142
    sget p0, Landroidx/compose/material3/R$string;->time_picker_minute_suffix:I

    .line 141
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026ime_picker_minute_suffix)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2a
    invoke-virtual {p2}, Landroidx/compose/material3/Strings$Companion;->getTimePicker24HourSuffix-adMyvUU()I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/material3/Strings;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 144
    sget p0, Landroidx/compose/material3/R$string;->time_picker_hour_24h_suffix:I

    .line 143
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resources.getString(\n   \u2026e_picker_hour_24h_suffix)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2b
    const-string p0, ""

    .line 32
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2c
    return-object p0
.end method
