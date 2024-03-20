.class public abstract Landroidx/preference/R$styleable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BackgroundStyle:[I

.field public static final CheckBoxPreference:[I

.field public static final DialogPreference:[I

.field public static final EditTextPreference:[I

.field public static final ListPreference:[I

.field public static final MultiSelectListPreference:[I

.field public static final Preference:[I

.field public static final PreferenceFragment:[I

.field public static final PreferenceGroup:[I

.field public static final PreferenceImageView:[I

.field public static final SeekBarPreference:[I

.field public static final SwitchPreference:[I

.field public static final SwitchPreferenceCompat:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x101030e    # @android:attr/selectableItemBackground

    .line 2
    const v1, 0x7f04068c    # @attr/selectableItemBackground

    .line 5
    filled-new-array {v0, v1}, [I

    .line 8
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/preference/R$styleable;->BackgroundStyle:[I

    .line 12
    const/4 v0, 0x6

    .line 14
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_0

    .line 17
    sput-object v0, Landroidx/preference/R$styleable;->CheckBoxPreference:[I

    .line 20
    const/16 v0, 0xc

    .line 22
    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_1

    .line 26
    sput-object v0, Landroidx/preference/R$styleable;->DialogPreference:[I

    .line 29
    const v0, 0x7f04089f

    .line 31
    filled-new-array {v0}, [I

    .line 34
    move-result-object v1

    .line 37
    sput-object v1, Landroidx/preference/R$styleable;->EditTextPreference:[I

    .line 38
    const v1, 0x10100b2    # @android:attr/entries

    .line 40
    const v2, 0x10101f8    # @android:attr/entryValues

    .line 43
    const v3, 0x7f0402aa

    .line 46
    const v4, 0x7f0402ad

    .line 49
    filled-new-array {v1, v2, v3, v4, v0}, [I

    .line 52
    move-result-object v0

    .line 55
    sput-object v0, Landroidx/preference/R$styleable;->ListPreference:[I

    .line 56
    filled-new-array {v1, v2, v3, v4}, [I

    .line 58
    move-result-object v0

    .line 61
    sput-object v0, Landroidx/preference/R$styleable;->MultiSelectListPreference:[I

    .line 62
    const/16 v0, 0x24

    .line 64
    new-array v0, v0, [I

    .line 66
    fill-array-data v0, :array_2

    .line 68
    sput-object v0, Landroidx/preference/R$styleable;->Preference:[I

    .line 71
    const v0, 0x101012a    # @android:attr/dividerHeight

    .line 73
    const v1, 0x7f040082    # @attr/allowDividerAfterLastItem

    .line 76
    const v2, 0x10100f2    # @android:attr/layout

    .line 79
    const v3, 0x1010129    # @android:attr/divider

    .line 82
    filled-new-array {v2, v3, v0, v1}, [I

    .line 85
    move-result-object v0

    .line 88
    sput-object v0, Landroidx/preference/R$styleable;->PreferenceFragment:[I

    .line 89
    const v0, 0x7f0403db

    .line 91
    const v1, 0x7f040593

    .line 94
    const v2, 0x10101e7    # @android:attr/orderingFromXml

    .line 97
    filled-new-array {v2, v0, v1}, [I

    .line 100
    move-result-object v0

    .line 103
    sput-object v0, Landroidx/preference/R$styleable;->PreferenceGroup:[I

    .line 104
    const v0, 0x7f0404de

    .line 106
    const v1, 0x7f0404e5

    .line 109
    const v2, 0x101011f    # @android:attr/maxWidth

    .line 112
    const v3, 0x1010120    # @android:attr/maxHeight

    .line 115
    filled-new-array {v2, v3, v0, v1}, [I

    .line 118
    move-result-object v0

    .line 121
    sput-object v0, Landroidx/preference/R$styleable;->PreferenceImageView:[I

    .line 122
    const/4 v0, 0x7

    .line 124
    new-array v0, v0, [I

    .line 125
    fill-array-data v0, :array_3

    .line 127
    sput-object v0, Landroidx/preference/R$styleable;->SeekBarPreference:[I

    .line 130
    const/16 v0, 0xa

    .line 132
    new-array v1, v0, [I

    .line 134
    fill-array-data v1, :array_4

    .line 136
    sput-object v1, Landroidx/preference/R$styleable;->SwitchPreference:[I

    .line 139
    new-array v0, v0, [I

    .line 141
    fill-array-data v0, :array_5

    .line 143
    sput-object v0, Landroidx/preference/R$styleable;->SwitchPreferenceCompat:[I

    .line 146
    return-void

    .line 148
    nop

    .line 149
    :array_0
    .array-data 4
        0x10101ef    # @android:attr/summaryOn
        0x10101f0    # @android:attr/summaryOff
        0x10101f1    # @android:attr/disableDependentsState
        0x7f040257
        0x7f0407b2
        0x7f0407b3
    .end array-data

    .line 150
    :array_1
    .array-data 4
        0x10101f2    # @android:attr/dialogTitle
        0x10101f3    # @android:attr/dialogMessage
        0x10101f4    # @android:attr/dialogIcon
        0x10101f5    # @android:attr/positiveButtonText
        0x10101f6    # @android:attr/negativeButtonText
        0x10101f7    # @android:attr/dialogLayout
        0x7f040245
        0x7f040246
        0x7f04024b
        0x7f040253
        0x7f040575
        0x7f0405e7
    .end array-data

    .line 166
    :array_2
    .array-data 4
        0x1010002    # @android:attr/icon
        0x101000d    # @android:attr/persistent
        0x101000e    # @android:attr/enabled
        0x10100f2    # @android:attr/layout
        0x10101e1    # @android:attr/title
        0x10101e6    # @android:attr/selectable
        0x10101e8    # @android:attr/key
        0x10101e9    # @android:attr/summary
        0x10101ea    # @android:attr/order
        0x10101eb    # @android:attr/widgetLayout
        0x10101ec    # @android:attr/dependency
        0x10101ed    # @android:attr/defaultValue
        0x10101ee    # @android:attr/shouldDisableView
        0x10102e3    # @android:attr/fragment
        0x101055c    # @android:attr/singleLineTitle
        0x1010561    # @android:attr/iconSpaceReserved
        0x7f040081    # @attr/allowDividerAbove
        0x7f040083    # @attr/allowDividerBelow
        0x7f040230
        0x7f040233
        0x7f040298
        0x7f04029a
        0x7f04032c
        0x7f0403aa
        0x7f0403b2    # @attr/iconSpaceReserved
        0x7f0403e7
        0x7f040407
        0x7f040419    # @attr/layout
        0x7f040592
        0x7f0405ba
        0x7f04068b
        0x7f0406a6
        0x7f0406c0    # @attr/singleLineTitle
        0x7f0407b1
        0x7f040855
        0x7f0408b8
    .end array-data

    :array_3
    .array-data 4
        0x10100f2    # @android:attr/layout
        0x1010136    # @android:attr/max
        0x7f04007b    # @attr/adjustable
        0x7f0404fe
        0x7f040685
        0x7f0406b3    # @attr/showSeekBarValue
        0x7f040899    # @attr/updatesContinuously
    .end array-data

    :array_4
    .array-data 4
        0x10101ef    # @android:attr/summaryOn
        0x10101f0    # @android:attr/summaryOff
        0x10101f1    # @android:attr/disableDependentsState
        0x101036b    # @android:attr/switchTextOn
        0x101036c    # @android:attr/switchTextOff
        0x7f040257
        0x7f0407b2
        0x7f0407b3
        0x7f0407bc
        0x7f0407bd
    .end array-data

    :array_5
    .array-data 4
        0x10101ef    # @android:attr/summaryOn
        0x10101f0    # @android:attr/summaryOff
        0x10101f1    # @android:attr/disableDependentsState
        0x101036b    # @android:attr/switchTextOn
        0x101036c    # @android:attr/switchTextOff
        0x7f040257
        0x7f0407b2
        0x7f0407b3
        0x7f0407bc
        0x7f0407bd
    .end array-data
.end method
