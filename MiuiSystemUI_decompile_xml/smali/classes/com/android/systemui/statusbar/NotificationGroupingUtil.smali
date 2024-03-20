.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final APP_NAME_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;

.field public static final APP_NAME_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;

.field public static final BADGE_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

.field public static final ICON_EXTRACTOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

.field public static final ICON_VISIBILITY_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;

.field public static final LEFT_ICON_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;

.field public static final TEXT_VIEW_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

.field public static final VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;


# instance fields
.field public final mDividers:Ljava/util/HashSet;

.field public final mProcessors:Ljava/util/ArrayList;

.field public final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>(Ljava/lang/Object;)V

    .line 5
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->TEXT_VIEW_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;

    .line 10
    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;-><init>()V

    .line 12
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 17
    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>()V

    .line 19
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->BADGE_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 24
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1$$ExternalSynthetic$IA0;)V

    .line 26
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;

    .line 31
    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;-><init>()V

    .line 33
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;

    .line 38
    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;-><init>()V

    .line 40
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->LEFT_ICON_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 45
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>(I)V

    .line 48
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->ICON_EXTRACTOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;

    .line 53
    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;-><init>()V

    .line 55
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->ICON_VISIBILITY_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;

    .line 58
    return-void
    .line 60
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    .line 10
    new-instance v2, Ljava/util/HashSet;

    .line 12
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mDividers:Ljava/util/HashSet;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 19
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    .line 21
    const v5, 0x1020006    # @android:id/icon

    .line 23
    sget-object v9, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->ICON_EXTRACTOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 26
    sget-object v10, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->ICON_VISIBILITY_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;

    .line 28
    sget-object v11, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 30
    move-object v3, v0

    .line 32
    move-object v4, p1

    .line 33
    move-object v6, v9

    .line 34
    move-object v7, v10

    .line 35
    move-object v8, v11

    .line 36
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$1;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    .line 43
    const v5, 0x1020511    # @android:id/switch_old

    .line 45
    sget-object v8, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->LEFT_ICON_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;

    .line 48
    move-object v3, v0

    .line 50
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$1;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    .line 57
    const v5, 0x1020461    # @android:id/radio

    .line 59
    const/4 v9, 0x0

    .line 62
    sget-object v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->BADGE_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 63
    const/4 v6, 0x0

    .line 65
    move-object v3, v0

    .line 66
    move-object v8, v11

    .line 67
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$1;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    .line 68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    .line 74
    const v5, 0x10201f6    # @android:id/app_ops

    .line 76
    sget-object v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;

    .line 79
    sget-object v8, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;

    .line 81
    move-object v3, v0

    .line 83
    move-object v6, v9

    .line 84
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$1;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const v5, 0x1020326    # @android:id/hide_from_picker

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    .line 94
    const/4 v6, 0x0

    .line 96
    sget-object v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->TEXT_VIEW_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 97
    move-object v3, v0

    .line 99
    move-object v8, v11

    .line 100
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$1;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const v0, 0x1020327    # @android:id/high

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v0

    .line 113
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    const v0, 0x1020329    # @android:id/holo

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v0

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    const v0, 0x1020555    # @android:id/toggle_mode

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v0

    .line 133
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
    .line 137
.end method


# virtual methods
.method public final sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v0

    .line 8
    const v1, 0x1020551    # @android:id/to_org_header

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mDividers:Ljava/util/HashSet;

    .line 18
    const/16 v5, 0x8

    .line 20
    const/4 v6, 0x1

    .line 22
    if-ge v3, v0, :cond_2

    .line 23
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v7

    .line 28
    instance-of v8, v7, Landroid/widget/TextView;

    .line 29
    if-eqz v8, :cond_1

    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 33
    move-result v8

    .line 36
    if-eq v8, v5, :cond_1

    .line 37
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 39
    move-result v8

    .line 42
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v8

    .line 46
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v8

    .line 50
    if-nez v8, :cond_1

    .line 51
    if-eq v7, v1, :cond_1

    .line 53
    move p0, v6

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    move p0, v2

    .line 60
    :goto_1
    if-eqz p0, :cond_4

    .line 61
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 63
    move-result-object p0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 67
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 69
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/app/Notification;->showsTime()Z

    .line 73
    move-result p0

    .line 76
    if-eqz p0, :cond_3

    .line 77
    goto :goto_2

    .line 79
    :cond_3
    move p0, v5

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    :goto_2
    move p0, v2

    .line 82
    :goto_3
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const/4 p0, 0x0

    .line 86
    move p2, v2

    .line 87
    :goto_4
    if-ge p2, v0, :cond_c

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 90
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 94
    move-result v3

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v3

    .line 101
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v3

    .line 105
    if-eqz v3, :cond_a

    .line 106
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 108
    if-ge p2, v0, :cond_7

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 112
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 116
    move-result v7

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v7

    .line 123
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 124
    move-result v7

    .line 127
    if-eqz v7, :cond_6

    .line 128
    add-int/lit8 p2, p2, -0x1

    .line 130
    goto :goto_5

    .line 132
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 133
    move-result v7

    .line 136
    if-eq v7, v5, :cond_5

    .line 137
    instance-of v7, v3, Landroid/widget/TextView;

    .line 139
    if-eqz v7, :cond_5

    .line 141
    if-eqz p0, :cond_8

    .line 143
    move p0, v6

    .line 145
    goto :goto_6

    .line 146
    :cond_7
    :goto_5
    move-object v3, p0

    .line 147
    :cond_8
    move p0, v2

    .line 148
    :goto_6
    if-eqz p0, :cond_9

    .line 149
    move p0, v2

    .line 151
    goto :goto_7

    .line 152
    :cond_9
    move p0, v5

    .line 153
    :goto_7
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    move-object p0, v3

    .line 157
    goto :goto_8

    .line 158
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 159
    move-result v3

    .line 162
    if-eq v3, v5, :cond_b

    .line 163
    instance-of v3, v1, Landroid/widget/TextView;

    .line 165
    if-eqz v3, :cond_b

    .line 167
    move-object p0, v1

    .line 169
    :cond_b
    :goto_8
    add-int/2addr p2, v6

    .line 170
    goto :goto_4

    .line 171
    :cond_c
    return-void
    .line 172
.end method

.method public final sanitizeTopLineViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 14
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    .line 22
    move-result-object v1

    .line 25
    const v2, 0x1020410    # @android:id/open_cross_profile

    .line 26
    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Landroid/view/ViewGroup;

    .line 35
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    .line 40
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 49
    check-cast v1, Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 52
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    .line 55
    move-result-object v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 67
    :cond_3
    return-void
    .line 70
.end method
