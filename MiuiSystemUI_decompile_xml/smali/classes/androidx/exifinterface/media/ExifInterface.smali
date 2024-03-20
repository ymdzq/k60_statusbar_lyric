.class public final Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field public static final DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field public static final DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEBUG:Z

.field public static final EXIF_ASCII_PREFIX:[B

.field public static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field public static final HEIF_BRAND_HEIC:[B

.field public static final HEIF_BRAND_MIF1:[B

.field public static final HEIF_TYPE_FTYP:[B

.field public static final IDENTIFIER_EXIF_APP1:[B

.field public static final IDENTIFIER_XMP_APP1:[B

.field public static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field public static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field public static final JPEG_SIGNATURE:[B

.field public static final ORF_MAKER_NOTE_HEADER_1:[B

.field public static final ORF_MAKER_NOTE_HEADER_2:[B

.field public static final PNG_CHUNK_TYPE_EXIF:[B

.field public static final PNG_CHUNK_TYPE_IEND:[B

.field public static final PNG_CHUNK_TYPE_IHDR:[B

.field public static final PNG_SIGNATURE:[B

.field public static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final WEBP_CHUNK_TYPE_ANIM:[B

.field public static final WEBP_CHUNK_TYPE_ANMF:[B

.field public static final WEBP_CHUNK_TYPE_EXIF:[B

.field public static final WEBP_CHUNK_TYPE_VP8:[B

.field public static final WEBP_CHUNK_TYPE_VP8L:[B

.field public static final WEBP_CHUNK_TYPE_VP8X:[B

.field public static final WEBP_SIGNATURE_1:[B

.field public static final WEBP_SIGNATURE_2:[B

.field public static final WEBP_VP8_SIGNATURE:[B

.field public static final sExifPointerTagMap:Ljava/util/HashMap;

.field public static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field public static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field public static final sTagSetForCompatibility:Ljava/util/HashSet;


# instance fields
.field public mAreThumbnailStripsConsecutive:Z

.field public final mAttributes:[Ljava/util/HashMap;

.field public final mAttributesOffsets:Ljava/util/Set;

.field public mExifByteOrder:Ljava/nio/ByteOrder;

.field public mHasThumbnail:Z

.field public mHasThumbnailStrips:Z

.field public mMimeType:I

.field public mOffsetToExifData:I

.field public mOrfMakerNoteOffset:I

.field public mOrfThumbnailLength:I

.field public mOrfThumbnailOffset:I

.field public final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field public mThumbnailBytes:[B

.field public mThumbnailCompression:I

.field public mThumbnailLength:I

.field public mThumbnailOffset:I

.field public mXmpIsFromSeparateMarker:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 138

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    move-result-object v1

    .line 6
    const-string v2, "ExifInterface"

    .line 7
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    move-result v2

    .line 12
    sput-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 13
    const/4 v2, 0x1

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 19
    const/4 v4, 0x6

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v5

    .line 24
    const/16 v6, 0x8

    .line 25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v7

    .line 30
    filled-new-array {v3, v5, v1, v7}, [Ljava/lang/Integer;

    .line 31
    move-result-object v5

    .line 34
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    const/4 v5, 0x2

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v8

    .line 42
    const/4 v9, 0x7

    .line 43
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v10

    .line 47
    const/4 v11, 0x4

    .line 48
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v12

    .line 52
    const/4 v13, 0x5

    .line 53
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v14

    .line 57
    filled-new-array {v8, v10, v12, v14}, [Ljava/lang/Integer;

    .line 58
    move-result-object v12

    .line 61
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    filled-new-array {v6, v6, v6}, [I

    .line 65
    move-result-object v12

    .line 68
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 69
    filled-new-array {v6}, [I

    .line 71
    move-result-object v12

    .line 74
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 75
    new-array v12, v0, [B

    .line 77
    fill-array-data v12, :array_0

    .line 79
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 82
    new-array v12, v11, [B

    .line 84
    fill-array-data v12, :array_1

    .line 86
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 89
    new-array v12, v11, [B

    .line 91
    fill-array-data v12, :array_2

    .line 93
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 96
    new-array v12, v11, [B

    .line 98
    fill-array-data v12, :array_3

    .line 100
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 103
    new-array v12, v4, [B

    .line 105
    fill-array-data v12, :array_4

    .line 107
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 110
    const/16 v12, 0xa

    .line 112
    new-array v15, v12, [B

    .line 114
    fill-array-data v15, :array_5

    .line 116
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 119
    new-array v15, v6, [B

    .line 121
    fill-array-data v15, :array_6

    .line 123
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 126
    new-array v15, v11, [B

    .line 128
    fill-array-data v15, :array_7

    .line 130
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 133
    new-array v15, v11, [B

    .line 135
    fill-array-data v15, :array_8

    .line 137
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    .line 140
    new-array v15, v11, [B

    .line 142
    fill-array-data v15, :array_9

    .line 144
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    .line 147
    new-array v15, v11, [B

    .line 149
    fill-array-data v15, :array_a

    .line 151
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 154
    new-array v15, v11, [B

    .line 156
    fill-array-data v15, :array_b

    .line 158
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 161
    new-array v15, v11, [B

    .line 163
    fill-array-data v15, :array_c

    .line 165
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 168
    new-array v15, v0, [B

    .line 170
    fill-array-data v15, :array_d

    .line 172
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 175
    const-string v15, "VP8X"

    .line 177
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 179
    move-result-object v12

    .line 182
    invoke-virtual {v15, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 183
    move-result-object v12

    .line 186
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 187
    const-string v12, "VP8L"

    .line 189
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 191
    move-result-object v15

    .line 194
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 195
    move-result-object v12

    .line 198
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 199
    const-string v12, "VP8 "

    .line 201
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 203
    move-result-object v15

    .line 206
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 207
    move-result-object v12

    .line 210
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 211
    const-string v12, "ANIM"

    .line 213
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 215
    move-result-object v15

    .line 218
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 219
    move-result-object v12

    .line 222
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 223
    const-string v12, "ANMF"

    .line 225
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 227
    move-result-object v15

    .line 230
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 231
    move-result-object v12

    .line 234
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 235
    const-string v16, ""

    .line 237
    const-string v17, "BYTE"

    .line 239
    const-string v18, "STRING"

    .line 241
    const-string v19, "USHORT"

    .line 243
    const-string v20, "ULONG"

    .line 245
    const-string v21, "URATIONAL"

    .line 247
    const-string v22, "SBYTE"

    .line 249
    const-string v23, "UNDEFINED"

    .line 251
    const-string v24, "SSHORT"

    .line 253
    const-string v25, "SLONG"

    .line 255
    const-string v26, "SRATIONAL"

    .line 257
    const-string v27, "SINGLE"

    .line 259
    const-string v28, "DOUBLE"

    .line 261
    const-string v29, "IFD"

    .line 263
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    .line 265
    move-result-object v12

    .line 268
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 269
    const/16 v12, 0xe

    .line 271
    new-array v15, v12, [I

    .line 273
    fill-array-data v15, :array_e

    .line 275
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 278
    new-array v15, v6, [B

    .line 280
    fill-array-data v15, :array_f

    .line 282
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 285
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 287
    move-object/from16 v16, v15

    .line 289
    const-string v12, "NewSubfileType"

    .line 291
    const/16 v6, 0xfe

    .line 293
    invoke-direct {v15, v12, v6, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 295
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 298
    move-object/from16 v17, v15

    .line 300
    const-string v6, "SubfileType"

    .line 302
    const/16 v2, 0xff

    .line 304
    invoke-direct {v15, v6, v2, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 306
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 309
    move-object/from16 v18, v15

    .line 311
    const-string v2, "ImageWidth"

    .line 313
    const/16 v9, 0x100

    .line 315
    invoke-direct {v15, v9, v2, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 317
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 320
    move-object/from16 v19, v2

    .line 322
    const-string v15, "ImageLength"

    .line 324
    const/16 v9, 0x101

    .line 326
    invoke-direct {v2, v9, v15, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 328
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 331
    move-object/from16 v20, v2

    .line 333
    const-string v15, "BitsPerSample"

    .line 335
    const/16 v9, 0x102

    .line 337
    invoke-direct {v2, v15, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 339
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 342
    move-object/from16 v21, v2

    .line 344
    const-string v15, "Compression"

    .line 346
    const/16 v9, 0x103

    .line 348
    invoke-direct {v2, v15, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 350
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 353
    move-object/from16 v22, v2

    .line 355
    const-string v9, "PhotometricInterpretation"

    .line 357
    const/16 v15, 0x106

    .line 359
    invoke-direct {v2, v9, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 361
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 364
    move-object/from16 v23, v2

    .line 366
    const-string v9, "ImageDescription"

    .line 368
    const/16 v15, 0x10e

    .line 370
    invoke-direct {v2, v9, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 372
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 375
    move-object/from16 v24, v2

    .line 377
    const-string v9, "Make"

    .line 379
    const/16 v15, 0x10f

    .line 381
    invoke-direct {v2, v9, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 383
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 386
    move-object/from16 v25, v2

    .line 388
    const-string v9, "Model"

    .line 390
    const/16 v15, 0x110

    .line 392
    invoke-direct {v2, v9, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 394
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 397
    move-object/from16 v26, v2

    .line 399
    const/16 v9, 0x111

    .line 401
    const-string v15, "StripOffsets"

    .line 403
    invoke-direct {v2, v9, v15, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 405
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 408
    move-object/from16 v27, v2

    .line 410
    const-string v9, "Orientation"

    .line 412
    const/16 v4, 0x112

    .line 414
    invoke-direct {v2, v9, v4, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 416
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 419
    move-object/from16 v28, v2

    .line 421
    const-string v4, "SamplesPerPixel"

    .line 423
    const/16 v9, 0x115

    .line 425
    invoke-direct {v2, v4, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 427
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 430
    move-object/from16 v29, v2

    .line 432
    const-string v4, "RowsPerStrip"

    .line 434
    const/16 v9, 0x116

    .line 436
    invoke-direct {v2, v9, v4, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 438
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 441
    move-object/from16 v30, v2

    .line 443
    const-string v4, "StripByteCounts"

    .line 445
    const/16 v9, 0x117

    .line 447
    invoke-direct {v2, v9, v4, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 449
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 452
    move-object/from16 v31, v2

    .line 454
    const-string v4, "XResolution"

    .line 456
    const/16 v9, 0x11a

    .line 458
    invoke-direct {v2, v4, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 460
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 463
    move-object/from16 v32, v2

    .line 465
    const-string v4, "YResolution"

    .line 467
    const/16 v9, 0x11b

    .line 469
    invoke-direct {v2, v4, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 471
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 474
    move-object/from16 v33, v2

    .line 476
    const-string v4, "PlanarConfiguration"

    .line 478
    const/16 v9, 0x11c

    .line 480
    invoke-direct {v2, v4, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 482
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 485
    move-object/from16 v34, v2

    .line 487
    const-string v4, "ResolutionUnit"

    .line 489
    const/16 v9, 0x128

    .line 491
    invoke-direct {v2, v4, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 493
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 496
    move-object/from16 v35, v2

    .line 498
    const-string v4, "TransferFunction"

    .line 500
    const/16 v9, 0x12d

    .line 502
    invoke-direct {v2, v4, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 504
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 507
    move-object/from16 v36, v2

    .line 509
    const-string v4, "Software"

    .line 511
    const/16 v9, 0x131

    .line 513
    invoke-direct {v2, v4, v9, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 515
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 518
    move-object/from16 v37, v2

    .line 520
    const-string v4, "DateTime"

    .line 522
    const/16 v9, 0x132

    .line 524
    invoke-direct {v2, v4, v9, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 526
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 529
    move-object/from16 v38, v2

    .line 531
    const-string v4, "Artist"

    .line 533
    const/16 v9, 0x13b

    .line 535
    invoke-direct {v2, v4, v9, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 537
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 540
    move-object/from16 v39, v2

    .line 542
    const-string v4, "WhitePoint"

    .line 544
    const/16 v9, 0x13e

    .line 546
    invoke-direct {v2, v4, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 548
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 551
    move-object/from16 v40, v2

    .line 553
    const-string v4, "PrimaryChromaticities"

    .line 555
    const/16 v9, 0x13f

    .line 557
    invoke-direct {v2, v4, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 559
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 562
    move-object/from16 v41, v2

    .line 564
    const-string v4, "SubIFDPointer"

    .line 566
    const/16 v9, 0x14a

    .line 568
    invoke-direct {v2, v4, v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 570
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 573
    move-object/from16 v42, v2

    .line 575
    const-string v9, "JPEGInterchangeFormat"

    .line 577
    const/16 v5, 0x201

    .line 579
    invoke-direct {v2, v9, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 581
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 584
    move-object/from16 v43, v2

    .line 586
    const-string v5, "JPEGInterchangeFormatLength"

    .line 588
    const/16 v9, 0x202

    .line 590
    invoke-direct {v2, v5, v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 592
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 595
    move-object/from16 v44, v2

    .line 597
    const-string v5, "YCbCrCoefficients"

    .line 599
    const/16 v9, 0x211

    .line 601
    invoke-direct {v2, v5, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 603
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 606
    move-object/from16 v45, v2

    .line 608
    const-string v5, "YCbCrSubSampling"

    .line 610
    const/16 v9, 0x212

    .line 612
    invoke-direct {v2, v5, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 614
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 617
    move-object/from16 v46, v2

    .line 619
    const-string v5, "YCbCrPositioning"

    .line 621
    const/16 v9, 0x213

    .line 623
    invoke-direct {v2, v5, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 625
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 628
    move-object/from16 v47, v2

    .line 630
    const-string v5, "ReferenceBlackWhite"

    .line 632
    const/16 v9, 0x214

    .line 634
    invoke-direct {v2, v5, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 636
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 639
    move-object/from16 v48, v2

    .line 641
    const-string v5, "Copyright"

    .line 643
    const v9, 0x8298

    .line 645
    const/4 v0, 0x2

    .line 648
    invoke-direct {v2, v5, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 649
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 652
    move-object/from16 v49, v0

    .line 654
    const-string v2, "ExifIFDPointer"

    .line 656
    const v5, 0x8769

    .line 658
    invoke-direct {v0, v2, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 661
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 664
    move-object/from16 v50, v0

    .line 666
    const-string v9, "GPSInfoIFDPointer"

    .line 668
    const v5, 0x8825

    .line 670
    invoke-direct {v0, v9, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 673
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 676
    move-object/from16 v51, v0

    .line 678
    const-string v5, "SensorTopBorder"

    .line 680
    invoke-direct {v0, v5, v11, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 682
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 685
    move-object/from16 v52, v0

    .line 687
    const-string v5, "SensorLeftBorder"

    .line 689
    invoke-direct {v0, v5, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 691
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 694
    move-object/from16 v53, v0

    .line 696
    const-string v5, "SensorBottomBorder"

    .line 698
    const/4 v13, 0x6

    .line 700
    invoke-direct {v0, v5, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 701
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 704
    move-object/from16 v54, v0

    .line 706
    const-string v5, "SensorRightBorder"

    .line 708
    const/4 v13, 0x7

    .line 710
    invoke-direct {v0, v5, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 711
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 714
    move-object/from16 v55, v0

    .line 716
    const-string v5, "ISO"

    .line 718
    const/16 v11, 0x17

    .line 720
    const/4 v13, 0x3

    .line 722
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 723
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 726
    move-object/from16 v56, v0

    .line 728
    const-string v5, "JpgFromRaw"

    .line 730
    const/16 v11, 0x2e

    .line 732
    const/4 v13, 0x7

    .line 734
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 735
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 738
    move-object/from16 v57, v0

    .line 740
    const-string v5, "Xmp"

    .line 742
    const/16 v11, 0x2bc

    .line 744
    const/4 v13, 0x1

    .line 746
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 747
    filled-new-array/range {v16 .. v57}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 750
    move-result-object v63

    .line 753
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 754
    move-object/from16 v64, v0

    .line 756
    const-string v5, "ExposureTime"

    .line 758
    const v11, 0x829a

    .line 760
    const/4 v13, 0x5

    .line 763
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 764
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 767
    move-object/from16 v65, v0

    .line 769
    const-string v5, "FNumber"

    .line 771
    const v11, 0x829d

    .line 773
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 776
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 779
    move-object/from16 v66, v0

    .line 781
    const-string v5, "ExposureProgram"

    .line 783
    const v11, 0x8822

    .line 785
    const/4 v13, 0x3

    .line 788
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 789
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 792
    move-object/from16 v67, v0

    .line 794
    const-string v5, "SpectralSensitivity"

    .line 796
    const v11, 0x8824

    .line 798
    const/4 v13, 0x2

    .line 801
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 802
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 805
    move-object/from16 v68, v0

    .line 807
    const-string v5, "PhotographicSensitivity"

    .line 809
    const v11, 0x8827

    .line 811
    const/4 v13, 0x3

    .line 814
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 815
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 818
    move-object/from16 v69, v0

    .line 820
    const-string v5, "OECF"

    .line 822
    const v11, 0x8828

    .line 824
    const/4 v13, 0x7

    .line 827
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 828
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 831
    move-object/from16 v70, v0

    .line 833
    const-string v5, "SensitivityType"

    .line 835
    const v11, 0x8830

    .line 837
    const/4 v13, 0x3

    .line 840
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 841
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 844
    move-object/from16 v71, v0

    .line 846
    const-string v5, "StandardOutputSensitivity"

    .line 848
    const v11, 0x8831

    .line 850
    const/4 v13, 0x4

    .line 853
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 854
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 857
    move-object/from16 v72, v0

    .line 859
    const-string v5, "RecommendedExposureIndex"

    .line 861
    const v11, 0x8832

    .line 863
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 866
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 869
    move-object/from16 v73, v0

    .line 871
    const-string v5, "ISOSpeed"

    .line 873
    const v11, 0x8833

    .line 875
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 878
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 881
    move-object/from16 v74, v0

    .line 883
    const-string v5, "ISOSpeedLatitudeyyy"

    .line 885
    const v11, 0x8834

    .line 887
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 890
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 893
    move-object/from16 v75, v0

    .line 895
    const-string v5, "ISOSpeedLatitudezzz"

    .line 897
    const v11, 0x8835

    .line 899
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 902
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 905
    move-object/from16 v76, v0

    .line 907
    const-string v5, "ExifVersion"

    .line 909
    const v11, 0x9000

    .line 911
    const/4 v13, 0x2

    .line 914
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 915
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 918
    move-object/from16 v77, v0

    .line 920
    const-string v5, "DateTimeOriginal"

    .line 922
    const v11, 0x9003

    .line 924
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 927
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 930
    move-object/from16 v78, v0

    .line 932
    const-string v5, "DateTimeDigitized"

    .line 934
    const v11, 0x9004

    .line 936
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 939
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 942
    move-object/from16 v79, v0

    .line 944
    const-string v5, "OffsetTime"

    .line 946
    const v11, 0x9010

    .line 948
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 951
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 954
    move-object/from16 v80, v0

    .line 956
    const-string v5, "OffsetTimeOriginal"

    .line 958
    const v11, 0x9011

    .line 960
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 963
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 966
    move-object/from16 v81, v0

    .line 968
    const-string v5, "OffsetTimeDigitized"

    .line 970
    const v11, 0x9012

    .line 972
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 975
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 978
    move-object/from16 v82, v0

    .line 980
    const-string v5, "ComponentsConfiguration"

    .line 982
    const v11, 0x9101

    .line 984
    const/4 v13, 0x7

    .line 987
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 988
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 991
    move-object/from16 v83, v0

    .line 993
    const-string v5, "CompressedBitsPerPixel"

    .line 995
    const v11, 0x9102

    .line 997
    const/4 v13, 0x5

    .line 1000
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1001
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1004
    move-object/from16 v84, v0

    .line 1006
    const-string v5, "ShutterSpeedValue"

    .line 1008
    const v11, 0x9201

    .line 1010
    const/16 v13, 0xa

    .line 1013
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1015
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1018
    move-object/from16 v85, v0

    .line 1020
    const-string v5, "ApertureValue"

    .line 1022
    const v11, 0x9202

    .line 1024
    const/4 v13, 0x5

    .line 1027
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1028
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1031
    move-object/from16 v86, v0

    .line 1033
    const-string v5, "BrightnessValue"

    .line 1035
    const v11, 0x9203

    .line 1037
    const/16 v13, 0xa

    .line 1040
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1042
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1045
    move-object/from16 v87, v0

    .line 1047
    const-string v5, "ExposureBiasValue"

    .line 1049
    const v11, 0x9204

    .line 1051
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1054
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1057
    move-object/from16 v88, v0

    .line 1059
    const-string v5, "MaxApertureValue"

    .line 1061
    const v11, 0x9205

    .line 1063
    const/4 v13, 0x5

    .line 1066
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1067
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1070
    move-object/from16 v89, v0

    .line 1072
    const-string v5, "SubjectDistance"

    .line 1074
    const v11, 0x9206

    .line 1076
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1079
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1082
    move-object/from16 v90, v0

    .line 1084
    const-string v5, "MeteringMode"

    .line 1086
    const v11, 0x9207

    .line 1088
    const/4 v13, 0x3

    .line 1091
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1092
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1095
    move-object/from16 v91, v0

    .line 1097
    const-string v5, "LightSource"

    .line 1099
    const v11, 0x9208

    .line 1101
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1104
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1107
    move-object/from16 v92, v0

    .line 1109
    const-string v5, "Flash"

    .line 1111
    const v11, 0x9209

    .line 1113
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1116
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1119
    move-object/from16 v93, v0

    .line 1121
    const-string v5, "FocalLength"

    .line 1123
    const v11, 0x920a

    .line 1125
    const/4 v13, 0x5

    .line 1128
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1129
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1132
    move-object/from16 v94, v0

    .line 1134
    const-string v5, "SubjectArea"

    .line 1136
    const v11, 0x9214

    .line 1138
    const/4 v13, 0x3

    .line 1141
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1142
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1145
    move-object/from16 v95, v0

    .line 1147
    const-string v5, "MakerNote"

    .line 1149
    const v11, 0x927c

    .line 1151
    const/4 v13, 0x7

    .line 1154
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1155
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1158
    move-object/from16 v96, v0

    .line 1160
    const-string v5, "UserComment"

    .line 1162
    const v11, 0x9286

    .line 1164
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1167
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1170
    move-object/from16 v97, v0

    .line 1172
    const-string v5, "SubSecTime"

    .line 1174
    const v11, 0x9290

    .line 1176
    const/4 v13, 0x2

    .line 1179
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1180
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1183
    move-object/from16 v98, v0

    .line 1185
    const-string v5, "SubSecTimeOriginal"

    .line 1187
    const v11, 0x9291

    .line 1189
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1192
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1195
    move-object/from16 v99, v0

    .line 1197
    const-string v5, "SubSecTimeDigitized"

    .line 1199
    const v11, 0x9292

    .line 1201
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1204
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1207
    move-object/from16 v100, v0

    .line 1209
    const-string v5, "FlashpixVersion"

    .line 1211
    const v11, 0xa000

    .line 1213
    const/4 v13, 0x7

    .line 1216
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1217
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1220
    move-object/from16 v101, v0

    .line 1222
    const-string v5, "ColorSpace"

    .line 1224
    const v11, 0xa001

    .line 1226
    const/4 v13, 0x3

    .line 1229
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1230
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1233
    move-object/from16 v102, v0

    .line 1235
    const-string v5, "PixelXDimension"

    .line 1237
    const v11, 0xa002

    .line 1239
    move-object/from16 v16, v7

    .line 1242
    const/4 v7, 0x4

    .line 1244
    invoke-direct {v0, v11, v5, v13, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 1245
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1248
    move-object/from16 v103, v0

    .line 1250
    const-string v5, "PixelYDimension"

    .line 1252
    const v11, 0xa003

    .line 1254
    invoke-direct {v0, v11, v5, v13, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 1257
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1260
    move-object/from16 v104, v0

    .line 1262
    const-string v5, "RelatedSoundFile"

    .line 1264
    const v11, 0xa004

    .line 1266
    const/4 v13, 0x2

    .line 1269
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1270
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1273
    move-object/from16 v105, v0

    .line 1275
    const-string v5, "InteroperabilityIFDPointer"

    .line 1277
    const v11, 0xa005

    .line 1279
    invoke-direct {v0, v5, v11, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1282
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1285
    move-object/from16 v106, v0

    .line 1287
    const-string v5, "FlashEnergy"

    .line 1289
    const v7, 0xa20b

    .line 1291
    const/4 v11, 0x5

    .line 1294
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1295
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1298
    move-object/from16 v107, v0

    .line 1300
    const-string v5, "SpatialFrequencyResponse"

    .line 1302
    const v7, 0xa20c

    .line 1304
    const/4 v13, 0x7

    .line 1307
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1308
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1311
    move-object/from16 v108, v0

    .line 1313
    const-string v5, "FocalPlaneXResolution"

    .line 1315
    const v7, 0xa20e

    .line 1317
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1320
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1323
    move-object/from16 v109, v0

    .line 1325
    const-string v5, "FocalPlaneYResolution"

    .line 1327
    const v7, 0xa20f

    .line 1329
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1332
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1335
    move-object/from16 v110, v0

    .line 1337
    const-string v5, "FocalPlaneResolutionUnit"

    .line 1339
    const v7, 0xa210

    .line 1341
    const/4 v11, 0x3

    .line 1344
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1345
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1348
    move-object/from16 v111, v0

    .line 1350
    const-string v5, "SubjectLocation"

    .line 1352
    const v7, 0xa214

    .line 1354
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1357
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1360
    move-object/from16 v112, v0

    .line 1362
    const-string v5, "ExposureIndex"

    .line 1364
    const v7, 0xa215

    .line 1366
    const/4 v13, 0x5

    .line 1369
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1370
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1373
    move-object/from16 v113, v0

    .line 1375
    const-string v5, "SensingMethod"

    .line 1377
    const v7, 0xa217

    .line 1379
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1382
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1385
    move-object/from16 v114, v0

    .line 1387
    const-string v5, "FileSource"

    .line 1389
    const v7, 0xa300

    .line 1391
    const/4 v11, 0x7

    .line 1394
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1395
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1398
    move-object/from16 v115, v0

    .line 1400
    const-string v5, "SceneType"

    .line 1402
    const v7, 0xa301

    .line 1404
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1407
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1410
    move-object/from16 v116, v0

    .line 1412
    const-string v5, "CFAPattern"

    .line 1414
    const v7, 0xa302

    .line 1416
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1419
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1422
    move-object/from16 v117, v0

    .line 1424
    const-string v5, "CustomRendered"

    .line 1426
    const v7, 0xa401

    .line 1428
    const/4 v11, 0x3

    .line 1431
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1432
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1435
    move-object/from16 v118, v0

    .line 1437
    const-string v5, "ExposureMode"

    .line 1439
    const v7, 0xa402

    .line 1441
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1444
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1447
    move-object/from16 v119, v0

    .line 1449
    const-string v5, "WhiteBalance"

    .line 1451
    const v7, 0xa403

    .line 1453
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1456
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1459
    move-object/from16 v120, v0

    .line 1461
    const-string v5, "DigitalZoomRatio"

    .line 1463
    const v7, 0xa404

    .line 1465
    const/4 v13, 0x5

    .line 1468
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1469
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1472
    move-object/from16 v121, v0

    .line 1474
    const-string v5, "FocalLengthIn35mmFilm"

    .line 1476
    const v7, 0xa405

    .line 1478
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1481
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1484
    move-object/from16 v122, v0

    .line 1486
    const-string v5, "SceneCaptureType"

    .line 1488
    const v7, 0xa406

    .line 1490
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1493
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1496
    move-object/from16 v123, v0

    .line 1498
    const-string v5, "GainControl"

    .line 1500
    const v7, 0xa407

    .line 1502
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1505
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1508
    move-object/from16 v124, v0

    .line 1510
    const-string v5, "Contrast"

    .line 1512
    const v7, 0xa408

    .line 1514
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1517
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1520
    move-object/from16 v125, v0

    .line 1522
    const-string v5, "Saturation"

    .line 1524
    const v7, 0xa409

    .line 1526
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1529
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1532
    move-object/from16 v126, v0

    .line 1534
    const-string v5, "Sharpness"

    .line 1536
    const v7, 0xa40a

    .line 1538
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1541
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1544
    move-object/from16 v127, v0

    .line 1546
    const-string v5, "DeviceSettingDescription"

    .line 1548
    const v7, 0xa40b

    .line 1550
    const/4 v13, 0x7

    .line 1553
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1554
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1557
    move-object/from16 v128, v0

    .line 1559
    const-string v5, "SubjectDistanceRange"

    .line 1561
    const v7, 0xa40c

    .line 1563
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1566
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1569
    move-object/from16 v129, v0

    .line 1571
    const-string v5, "ImageUniqueID"

    .line 1573
    const v7, 0xa420

    .line 1575
    const/4 v11, 0x2

    .line 1578
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1579
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1582
    move-object/from16 v130, v0

    .line 1584
    const-string v5, "CameraOwnerName"

    .line 1586
    const v7, 0xa430

    .line 1588
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1591
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1594
    move-object/from16 v131, v0

    .line 1596
    const-string v5, "BodySerialNumber"

    .line 1598
    const v7, 0xa431

    .line 1600
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1603
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1606
    move-object/from16 v132, v0

    .line 1608
    const-string v5, "LensSpecification"

    .line 1610
    const v7, 0xa432

    .line 1612
    const/4 v13, 0x5

    .line 1615
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1616
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1619
    move-object/from16 v133, v0

    .line 1621
    const-string v5, "LensMake"

    .line 1623
    const v7, 0xa433

    .line 1625
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1628
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1631
    move-object/from16 v134, v0

    .line 1633
    const-string v5, "LensModel"

    .line 1635
    const v7, 0xa434

    .line 1637
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1640
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1643
    move-object/from16 v135, v0

    .line 1645
    const-string v5, "Gamma"

    .line 1647
    const v7, 0xa500

    .line 1649
    const/4 v11, 0x5

    .line 1652
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1653
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1656
    move-object/from16 v136, v0

    .line 1658
    const-string v5, "DNGVersion"

    .line 1660
    const v7, 0xc612

    .line 1662
    const/4 v11, 0x1

    .line 1665
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1666
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1669
    move-object/from16 v137, v0

    .line 1671
    const-string v5, "DefaultCropSize"

    .line 1673
    const v7, 0xc620

    .line 1675
    const/4 v11, 0x4

    .line 1678
    const/4 v13, 0x3

    .line 1679
    invoke-direct {v0, v7, v5, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 1680
    filled-new-array/range {v64 .. v137}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1683
    move-result-object v59

    .line 1686
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1687
    move-object/from16 v17, v0

    .line 1689
    const-string v5, "GPSVersionID"

    .line 1691
    const/4 v7, 0x0

    .line 1693
    const/4 v11, 0x1

    .line 1694
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1695
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1698
    move-object/from16 v18, v0

    .line 1700
    const-string v5, "GPSLatitudeRef"

    .line 1702
    const/4 v13, 0x2

    .line 1704
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1705
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1708
    move-object/from16 v19, v0

    .line 1710
    const-string v5, "GPSLatitude"

    .line 1712
    const/16 v7, 0xa

    .line 1714
    const/4 v11, 0x5

    .line 1716
    invoke-direct {v0, v13, v5, v11, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 1717
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1720
    move-object/from16 v20, v0

    .line 1722
    const-string v5, "GPSLongitudeRef"

    .line 1724
    const/4 v7, 0x3

    .line 1726
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1727
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1730
    move-object/from16 v21, v0

    .line 1732
    const-string v5, "GPSLongitude"

    .line 1734
    const/4 v7, 0x4

    .line 1736
    const/16 v13, 0xa

    .line 1737
    invoke-direct {v0, v7, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 1739
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1742
    move-object/from16 v22, v0

    .line 1744
    const-string v5, "GPSAltitudeRef"

    .line 1746
    const/4 v7, 0x1

    .line 1748
    invoke-direct {v0, v5, v11, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1749
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1752
    move-object/from16 v23, v0

    .line 1754
    const-string v5, "GPSAltitude"

    .line 1756
    const/4 v7, 0x6

    .line 1758
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1759
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1762
    move-object/from16 v24, v0

    .line 1764
    const-string v5, "GPSTimeStamp"

    .line 1766
    const/4 v7, 0x7

    .line 1768
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1769
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1772
    move-object/from16 v25, v0

    .line 1774
    const-string v5, "GPSSatellites"

    .line 1776
    const/16 v7, 0x8

    .line 1778
    const/4 v11, 0x2

    .line 1780
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1781
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1784
    move-object/from16 v26, v0

    .line 1786
    const-string v5, "GPSStatus"

    .line 1788
    const/16 v7, 0x9

    .line 1790
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1792
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1795
    move-object/from16 v27, v0

    .line 1797
    const-string v5, "GPSMeasureMode"

    .line 1799
    const/16 v7, 0xa

    .line 1801
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1803
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1806
    move-object/from16 v28, v0

    .line 1808
    const-string v5, "GPSDOP"

    .line 1810
    const/16 v7, 0xb

    .line 1812
    const/4 v13, 0x5

    .line 1814
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1815
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1818
    move-object/from16 v29, v0

    .line 1820
    const-string v5, "GPSSpeedRef"

    .line 1822
    const/16 v7, 0xc

    .line 1824
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1826
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1829
    move-object/from16 v30, v0

    .line 1831
    const-string v5, "GPSSpeed"

    .line 1833
    const/16 v7, 0xd

    .line 1835
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1837
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1840
    move-object/from16 v31, v0

    .line 1842
    const-string v5, "GPSTrackRef"

    .line 1844
    const/16 v7, 0xe

    .line 1846
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1848
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1851
    move-object/from16 v32, v0

    .line 1853
    const-string v5, "GPSTrack"

    .line 1855
    const/16 v7, 0xf

    .line 1857
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1859
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1862
    move-object/from16 v33, v0

    .line 1864
    const-string v5, "GPSImgDirectionRef"

    .line 1866
    const/16 v7, 0x10

    .line 1868
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1870
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1873
    move-object/from16 v34, v0

    .line 1875
    const-string v5, "GPSImgDirection"

    .line 1877
    const/16 v7, 0x11

    .line 1879
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1881
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1884
    move-object/from16 v35, v0

    .line 1886
    const-string v5, "GPSMapDatum"

    .line 1888
    const/16 v7, 0x12

    .line 1890
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1892
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1895
    move-object/from16 v36, v0

    .line 1897
    const-string v5, "GPSDestLatitudeRef"

    .line 1899
    const/16 v7, 0x13

    .line 1901
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1903
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1906
    move-object/from16 v37, v0

    .line 1908
    const-string v5, "GPSDestLatitude"

    .line 1910
    const/16 v7, 0x14

    .line 1912
    const/4 v13, 0x5

    .line 1914
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1915
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1918
    move-object/from16 v38, v0

    .line 1920
    const-string v5, "GPSDestLongitudeRef"

    .line 1922
    const/16 v7, 0x15

    .line 1924
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1926
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1929
    move-object/from16 v39, v0

    .line 1931
    const-string v5, "GPSDestLongitude"

    .line 1933
    const/16 v7, 0x16

    .line 1935
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1937
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1940
    move-object/from16 v40, v0

    .line 1942
    const-string v5, "GPSDestBearingRef"

    .line 1944
    const/16 v7, 0x17

    .line 1946
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1948
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1951
    move-object/from16 v41, v0

    .line 1953
    const-string v5, "GPSDestBearing"

    .line 1955
    const/16 v7, 0x18

    .line 1957
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1959
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1962
    move-object/from16 v42, v0

    .line 1964
    const-string v5, "GPSDestDistanceRef"

    .line 1966
    const/16 v7, 0x19

    .line 1968
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1970
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1973
    move-object/from16 v43, v0

    .line 1975
    const-string v5, "GPSDestDistance"

    .line 1977
    const/16 v7, 0x1a

    .line 1979
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1981
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1984
    move-object/from16 v44, v0

    .line 1986
    const-string v5, "GPSProcessingMethod"

    .line 1988
    const/16 v7, 0x1b

    .line 1990
    const/4 v11, 0x7

    .line 1992
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1993
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1996
    move-object/from16 v45, v0

    .line 1998
    const-string v5, "GPSAreaInformation"

    .line 2000
    const/16 v7, 0x1c

    .line 2002
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2004
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2007
    move-object/from16 v46, v0

    .line 2009
    const-string v5, "GPSDateStamp"

    .line 2011
    const/16 v7, 0x1d

    .line 2013
    const/4 v11, 0x2

    .line 2015
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2016
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2019
    move-object/from16 v47, v0

    .line 2021
    const-string v5, "GPSDifferential"

    .line 2023
    const/16 v7, 0x1e

    .line 2025
    const/4 v11, 0x3

    .line 2027
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2028
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2031
    move-object/from16 v48, v0

    .line 2033
    const-string v5, "GPSHPositioningError"

    .line 2035
    const/16 v7, 0x1f

    .line 2037
    const/4 v11, 0x5

    .line 2039
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2040
    filled-new-array/range {v17 .. v48}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2043
    move-result-object v60

    .line 2046
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2047
    const-string v5, "InteroperabilityIndex"

    .line 2049
    const/4 v7, 0x1

    .line 2051
    const/4 v11, 0x2

    .line 2052
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2053
    filled-new-array {v0}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2056
    move-result-object v61

    .line 2059
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2060
    move-object/from16 v64, v0

    .line 2062
    const/4 v5, 0x4

    .line 2064
    const/16 v7, 0xfe

    .line 2065
    invoke-direct {v0, v12, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2067
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2070
    move-object/from16 v65, v0

    .line 2072
    const/16 v7, 0xff

    .line 2074
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2076
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2079
    move-object/from16 v66, v0

    .line 2081
    const-string v6, "ThumbnailImageWidth"

    .line 2083
    const/4 v7, 0x3

    .line 2085
    const/16 v11, 0x100

    .line 2086
    invoke-direct {v0, v11, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 2088
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2091
    move-object/from16 v67, v0

    .line 2093
    const-string v6, "ThumbnailImageLength"

    .line 2095
    const/16 v11, 0x101

    .line 2097
    invoke-direct {v0, v11, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 2099
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2102
    move-object/from16 v68, v0

    .line 2104
    const-string v5, "BitsPerSample"

    .line 2106
    const/16 v6, 0x102

    .line 2108
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2110
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2113
    move-object/from16 v69, v0

    .line 2115
    const-string v5, "Compression"

    .line 2117
    const/16 v6, 0x103

    .line 2119
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2121
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2124
    move-object/from16 v70, v0

    .line 2126
    const-string v5, "PhotometricInterpretation"

    .line 2128
    const/16 v6, 0x106

    .line 2130
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2132
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2135
    move-object/from16 v71, v0

    .line 2137
    const-string v5, "ImageDescription"

    .line 2139
    const/16 v6, 0x10e

    .line 2141
    const/4 v7, 0x2

    .line 2143
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2144
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2147
    move-object/from16 v72, v0

    .line 2149
    const-string v5, "Make"

    .line 2151
    const/16 v6, 0x10f

    .line 2153
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2155
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2158
    move-object/from16 v73, v0

    .line 2160
    const-string v5, "Model"

    .line 2162
    const/16 v6, 0x110

    .line 2164
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2166
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2169
    move-object/from16 v74, v0

    .line 2171
    const/4 v5, 0x3

    .line 2173
    const/4 v6, 0x4

    .line 2174
    const/16 v7, 0x111

    .line 2175
    invoke-direct {v0, v7, v15, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 2177
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2180
    move-object/from16 v75, v0

    .line 2182
    const-string v6, "ThumbnailOrientation"

    .line 2184
    const/16 v7, 0x112

    .line 2186
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2188
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2191
    move-object/from16 v76, v0

    .line 2193
    const-string v6, "SamplesPerPixel"

    .line 2195
    const/16 v7, 0x115

    .line 2197
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2199
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2202
    move-object/from16 v77, v0

    .line 2204
    const-string v6, "RowsPerStrip"

    .line 2206
    const/16 v7, 0x116

    .line 2208
    const/4 v11, 0x4

    .line 2210
    invoke-direct {v0, v7, v6, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 2211
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2214
    move-object/from16 v78, v0

    .line 2216
    const-string v6, "StripByteCounts"

    .line 2218
    const/16 v7, 0x117

    .line 2220
    invoke-direct {v0, v7, v6, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 2222
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2225
    move-object/from16 v79, v0

    .line 2227
    const-string v5, "XResolution"

    .line 2229
    const/16 v6, 0x11a

    .line 2231
    const/4 v7, 0x5

    .line 2233
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2234
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2237
    move-object/from16 v80, v0

    .line 2239
    const-string v5, "YResolution"

    .line 2241
    const/16 v6, 0x11b

    .line 2243
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2245
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2248
    move-object/from16 v81, v0

    .line 2250
    const-string v5, "PlanarConfiguration"

    .line 2252
    const/16 v6, 0x11c

    .line 2254
    const/4 v7, 0x3

    .line 2256
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2257
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2260
    move-object/from16 v82, v0

    .line 2262
    const-string v5, "ResolutionUnit"

    .line 2264
    const/16 v6, 0x128

    .line 2266
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2268
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2271
    move-object/from16 v83, v0

    .line 2273
    const-string v5, "TransferFunction"

    .line 2275
    const/16 v6, 0x12d

    .line 2277
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2279
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2282
    move-object/from16 v84, v0

    .line 2284
    const-string v5, "Software"

    .line 2286
    const/16 v6, 0x131

    .line 2288
    const/4 v7, 0x2

    .line 2290
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2291
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2294
    move-object/from16 v85, v0

    .line 2296
    const-string v5, "DateTime"

    .line 2298
    const/16 v6, 0x132

    .line 2300
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2302
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2305
    move-object/from16 v86, v0

    .line 2307
    const-string v5, "Artist"

    .line 2309
    const/16 v6, 0x13b

    .line 2311
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2313
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2316
    move-object/from16 v87, v0

    .line 2318
    const-string v5, "WhitePoint"

    .line 2320
    const/16 v6, 0x13e

    .line 2322
    const/4 v7, 0x5

    .line 2324
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2325
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2328
    move-object/from16 v88, v0

    .line 2330
    const-string v5, "PrimaryChromaticities"

    .line 2332
    const/16 v6, 0x13f

    .line 2334
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2336
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2339
    move-object/from16 v89, v0

    .line 2341
    const/4 v5, 0x4

    .line 2343
    const/16 v6, 0x14a

    .line 2344
    invoke-direct {v0, v4, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2346
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2349
    move-object/from16 v90, v0

    .line 2351
    const-string v6, "JPEGInterchangeFormat"

    .line 2353
    const/16 v7, 0x201

    .line 2355
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2357
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2360
    move-object/from16 v91, v0

    .line 2362
    const-string v6, "JPEGInterchangeFormatLength"

    .line 2364
    const/16 v7, 0x202

    .line 2366
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2368
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2371
    move-object/from16 v92, v0

    .line 2373
    const-string v5, "YCbCrCoefficients"

    .line 2375
    const/16 v6, 0x211

    .line 2377
    const/4 v7, 0x5

    .line 2379
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2380
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2383
    move-object/from16 v93, v0

    .line 2385
    const-string v5, "YCbCrSubSampling"

    .line 2387
    const/16 v6, 0x212

    .line 2389
    const/4 v7, 0x3

    .line 2391
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2392
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2395
    move-object/from16 v94, v0

    .line 2397
    const-string v5, "YCbCrPositioning"

    .line 2399
    const/16 v6, 0x213

    .line 2401
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2403
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2406
    move-object/from16 v95, v0

    .line 2408
    const-string v5, "ReferenceBlackWhite"

    .line 2410
    const/16 v6, 0x214

    .line 2412
    const/4 v7, 0x5

    .line 2414
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2415
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2418
    move-object/from16 v96, v0

    .line 2420
    const-string v5, "Copyright"

    .line 2422
    const v6, 0x8298

    .line 2424
    const/4 v7, 0x2

    .line 2427
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2428
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2431
    move-object/from16 v97, v0

    .line 2433
    const/4 v5, 0x4

    .line 2435
    const v6, 0x8769

    .line 2436
    invoke-direct {v0, v2, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2439
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2442
    move-object/from16 v98, v0

    .line 2444
    const v6, 0x8825

    .line 2446
    invoke-direct {v0, v9, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2449
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2452
    move-object/from16 v99, v0

    .line 2454
    const-string v6, "DNGVersion"

    .line 2456
    const v7, 0xc612

    .line 2458
    const/4 v11, 0x1

    .line 2461
    invoke-direct {v0, v6, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2462
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2465
    move-object/from16 v100, v0

    .line 2467
    const-string v6, "DefaultCropSize"

    .line 2469
    const v7, 0xc620

    .line 2471
    const/4 v11, 0x3

    .line 2474
    invoke-direct {v0, v7, v6, v11, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(ILjava/lang/String;II)V

    .line 2475
    filled-new-array/range {v64 .. v100}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2478
    move-result-object v62

    .line 2481
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2482
    const/16 v6, 0x111

    .line 2484
    invoke-direct {v0, v15, v6, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2486
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2489
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2491
    const-string v6, "ThumbnailImage"

    .line 2493
    const/4 v7, 0x7

    .line 2495
    const/16 v11, 0x100

    .line 2496
    invoke-direct {v0, v6, v11, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2498
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2501
    const-string v7, "CameraSettingsIFDPointer"

    .line 2503
    const/16 v11, 0x2020

    .line 2505
    invoke-direct {v6, v7, v11, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2507
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2510
    const-string v11, "ImageProcessingIFDPointer"

    .line 2512
    const/16 v12, 0x2040

    .line 2514
    invoke-direct {v7, v11, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2516
    filled-new-array {v0, v6, v7}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2519
    move-result-object v64

    .line 2522
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2523
    const-string v6, "PreviewImageStart"

    .line 2525
    const/16 v7, 0x101

    .line 2527
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2529
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2532
    const-string v7, "PreviewImageLength"

    .line 2534
    const/16 v11, 0x102

    .line 2536
    invoke-direct {v6, v7, v11, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2538
    filled-new-array {v0, v6}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2541
    move-result-object v65

    .line 2544
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2545
    const-string v5, "AspectFrame"

    .line 2547
    const/16 v6, 0x1113

    .line 2549
    const/4 v7, 0x3

    .line 2551
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2552
    filled-new-array {v0}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2555
    move-result-object v66

    .line 2558
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2559
    const-string v5, "ColorSpace"

    .line 2561
    const/16 v6, 0x37

    .line 2563
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2565
    filled-new-array {v0}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2568
    move-result-object v67

    .line 2571
    move-object/from16 v58, v63

    .line 2572
    filled-new-array/range {v58 .. v67}, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2574
    move-result-object v0

    .line 2577
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2578
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2580
    const/4 v5, 0x4

    .line 2582
    const/16 v6, 0x14a

    .line 2583
    invoke-direct {v0, v4, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2585
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2588
    const v6, 0x8769

    .line 2590
    invoke-direct {v4, v2, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2593
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2596
    const v6, 0x8825

    .line 2598
    invoke-direct {v2, v9, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2601
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2604
    const-string v7, "InteroperabilityIFDPointer"

    .line 2606
    const v9, 0xa005

    .line 2608
    invoke-direct {v6, v7, v9, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2611
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2614
    const-string v7, "CameraSettingsIFDPointer"

    .line 2616
    const/16 v9, 0x2020

    .line 2618
    const/4 v11, 0x1

    .line 2620
    invoke-direct {v5, v7, v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2621
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2624
    const-string v9, "ImageProcessingIFDPointer"

    .line 2626
    invoke-direct {v7, v9, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2628
    move-object/from16 v17, v0

    .line 2631
    move-object/from16 v18, v4

    .line 2633
    move-object/from16 v19, v2

    .line 2635
    move-object/from16 v20, v6

    .line 2637
    move-object/from16 v21, v5

    .line 2639
    move-object/from16 v22, v7

    .line 2641
    filled-new-array/range {v17 .. v22}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2643
    move-result-object v0

    .line 2646
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2647
    const/16 v0, 0xa

    .line 2649
    new-array v2, v0, [Ljava/util/HashMap;

    .line 2651
    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 2653
    new-array v0, v0, [Ljava/util/HashMap;

    .line 2655
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 2657
    new-instance v0, Ljava/util/HashSet;

    .line 2659
    const-string v2, "DigitalZoomRatio"

    .line 2661
    const-string v4, "ExposureTime"

    .line 2663
    const-string v5, "FNumber"

    .line 2665
    const-string v6, "SubjectDistance"

    .line 2667
    const-string v7, "GPSTimeStamp"

    .line 2669
    filled-new-array {v5, v2, v4, v6, v7}, [Ljava/lang/String;

    .line 2671
    move-result-object v2

    .line 2674
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2675
    move-result-object v2

    .line 2678
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2679
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 2682
    new-instance v0, Ljava/util/HashMap;

    .line 2684
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2686
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 2689
    const-string v0, "US-ASCII"

    .line 2691
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2693
    move-result-object v0

    .line 2696
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 2697
    const-string v2, "Exif\u0000\u0000"

    .line 2699
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2701
    move-result-object v2

    .line 2704
    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 2705
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 2707
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2709
    move-result-object v0

    .line 2712
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 2713
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2715
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2717
    const-string/jumbo v4, "yyyy:MM:dd HH:mm:ss"

    .line 2719
    invoke-direct {v0, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2722
    const-string v4, "UTC"

    .line 2725
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2727
    move-result-object v4

    .line 2730
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2731
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2734
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    .line 2736
    invoke-direct {v0, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2739
    const-string v2, "UTC"

    .line 2742
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2744
    move-result-object v2

    .line 2747
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2748
    const/4 v0, 0x0

    .line 2751
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2752
    array-length v4, v2

    .line 2754
    if-ge v0, v4, :cond_1

    .line 2755
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 2757
    new-instance v5, Ljava/util/HashMap;

    .line 2759
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2761
    aput-object v5, v4, v0

    .line 2764
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 2766
    new-instance v5, Ljava/util/HashMap;

    .line 2768
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2770
    aput-object v5, v4, v0

    .line 2773
    aget-object v2, v2, v0

    .line 2775
    array-length v4, v2

    .line 2777
    const/4 v5, 0x0

    .line 2778
    :goto_1
    if-ge v5, v4, :cond_0

    .line 2779
    aget-object v6, v2, v5

    .line 2781
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 2783
    aget-object v7, v7, v0

    .line 2785
    iget v9, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2787
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2789
    move-result-object v9

    .line 2792
    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2793
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 2796
    aget-object v7, v7, v0

    .line 2798
    iget-object v9, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 2800
    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2802
    add-int/lit8 v5, v5, 0x1

    .line 2805
    goto :goto_1

    .line 2807
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2808
    goto :goto_0

    .line 2810
    :cond_1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 2811
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2813
    const/4 v4, 0x0

    .line 2815
    aget-object v4, v2, v4

    .line 2816
    iget v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2818
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2820
    move-result-object v4

    .line 2823
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2824
    const/4 v4, 0x1

    .line 2827
    aget-object v4, v2, v4

    .line 2828
    iget v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2830
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2832
    move-result-object v4

    .line 2835
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    const/4 v3, 0x2

    .line 2839
    aget-object v3, v2, v3

    .line 2840
    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2842
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2844
    move-result-object v3

    .line 2847
    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    const/4 v3, 0x3

    .line 2851
    aget-object v3, v2, v3

    .line 2852
    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2854
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2856
    move-result-object v3

    .line 2859
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2860
    const/4 v1, 0x4

    .line 2863
    aget-object v1, v2, v1

    .line 2864
    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2866
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2868
    move-result-object v1

    .line 2871
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    const/4 v1, 0x5

    .line 2875
    aget-object v1, v2, v1

    .line 2876
    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2878
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2880
    move-result-object v1

    .line 2883
    move-object/from16 v2, v16

    .line 2884
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2886
    const-string v0, ".*[1-9].*"

    .line 2889
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2891
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2894
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2896
    move-result-object v0

    .line 2899
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 2900
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2902
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2904
    move-result-object v0

    .line 2907
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 2908
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2910
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2912
    move-result-object v0

    .line 2915
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 2916
    return-void

    .line 2918
    nop

    .line 2919
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 2920
    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    .line 2926
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    .line 2932
    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    .line 2938
    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 2944
    nop

    .line 2951
    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 2952
    nop

    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_f
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 5
    array-length v1, v0

    .line 7
    new-array v1, v1, [Ljava/util/HashMap;

    .line 8
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 10
    new-instance v1, Ljava/util/HashSet;

    .line 12
    array-length v0, v0

    .line 14
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 18
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 20
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    if-eqz p1, :cond_4

    .line 24
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    .line 28
    const-wide/16 v3, 0x0

    .line 30
    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    move v2, v0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 37
    if-eqz v2, :cond_0

    .line 39
    const-string v2, "ExifInterface"

    .line 41
    const-string v3, "The file descriptor for the given input is not seekable"

    .line 43
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    move v2, v1

    .line 48
    :goto_0
    const/4 v3, 0x0

    .line 49
    if-eqz v2, :cond_1

    .line 50
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 52
    :try_start_1
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 54
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception p0

    .line 59
    new-instance p1, Ljava/io/IOException;

    .line 60
    const-string v0, "Failed to duplicate file descriptor"

    .line 62
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    throw p1

    .line 67
    :cond_1
    iput-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 68
    move v0, v1

    .line 70
    :goto_1
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    .line 71
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :try_start_3
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    if-eqz v0, :cond_2

    .line 82
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 84
    :cond_2
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    move-object v3, v1

    .line 89
    goto :goto_2

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    :goto_2
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    if-eqz v0, :cond_3

    .line 95
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 97
    :cond_3
    throw p0

    .line 100
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 101
    const-string p1, "fileDescriptor cannot be null"

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0
    .line 108
.end method

.method public static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12

    .line 1
    const-string v0, ","

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x2

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v5

    .line 14
    const/4 v6, -0x1

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v7

    .line 19
    if-eqz v1, :cond_9

    .line 20
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    aget-object v0, p0, v2

    .line 26
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    .line 28
    move-result-object v0

    .line 31
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v1

    .line 39
    if-ne v1, v4, :cond_0

    .line 40
    return-object v0

    .line 42
    :cond_0
    :goto_0
    array-length v1, p0

    .line 43
    if-ge v3, v1, :cond_8

    .line 44
    aget-object v1, p0, v3

    .line 46
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    .line 48
    move-result-object v1

    .line 51
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    check-cast v2, Ljava/lang/Integer;

    .line 54
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    check-cast v2, Ljava/lang/Integer;

    .line 66
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    goto :goto_1

    .line 76
    :cond_1
    move v2, v6

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 79
    check-cast v2, Ljava/lang/Integer;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result v2

    .line 86
    :goto_2
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 87
    check-cast v4, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result v4

    .line 94
    if-eq v4, v6, :cond_4

    .line 95
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    check-cast v4, Ljava/lang/Integer;

    .line 99
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 101
    invoke-virtual {v4, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v4

    .line 106
    if-nez v4, :cond_3

    .line 107
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 109
    check-cast v1, Ljava/lang/Integer;

    .line 111
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 113
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 118
    if-eqz v1, :cond_4

    .line 119
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 121
    check-cast v1, Ljava/lang/Integer;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 125
    move-result v1

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    move v1, v6

    .line 130
    :goto_3
    if-ne v2, v6, :cond_5

    .line 131
    if-ne v1, v6, :cond_5

    .line 133
    new-instance p0, Landroid/util/Pair;

    .line 135
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    return-object p0

    .line 140
    :cond_5
    if-ne v2, v6, :cond_6

    .line 141
    new-instance v0, Landroid/util/Pair;

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v1

    .line 148
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    goto :goto_4

    .line 152
    :cond_6
    if-ne v1, v6, :cond_7

    .line 153
    new-instance v0, Landroid/util/Pair;

    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v1

    .line 160
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 164
    goto :goto_0

    .line 166
    :cond_8
    return-object v0

    .line 167
    :cond_9
    const-string v0, "/"

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    move-result v1

    .line 173
    const-wide/16 v8, 0x0

    .line 174
    if-eqz v1, :cond_f

    .line 176
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 178
    move-result-object p0

    .line 181
    array-length v0, p0

    .line 182
    if-ne v0, v4, :cond_e

    .line 183
    :try_start_0
    aget-object v0, p0, v2

    .line 185
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 187
    move-result-wide v0

    .line 190
    double-to-long v0, v0

    .line 191
    aget-object p0, p0, v3

    .line 192
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 194
    move-result-wide v2

    .line 197
    double-to-long v2, v2

    .line 198
    cmp-long p0, v0, v8

    .line 199
    const/16 v4, 0xa

    .line 201
    if-ltz p0, :cond_d

    .line 203
    cmp-long p0, v2, v8

    .line 205
    if-gez p0, :cond_a

    .line 207
    goto :goto_6

    .line 209
    :cond_a
    const-wide/32 v8, 0x7fffffff

    .line 210
    cmp-long p0, v0, v8

    .line 213
    const/4 v0, 0x5

    .line 215
    if-gtz p0, :cond_c

    .line 216
    cmp-long p0, v2, v8

    .line 218
    if-lez p0, :cond_b

    .line 220
    goto :goto_5

    .line 222
    :cond_b
    new-instance p0, Landroid/util/Pair;

    .line 223
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    move-result-object v1

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v0

    .line 232
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    return-object p0

    .line 236
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    move-result-object v0

    .line 242
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    return-object p0

    .line 246
    :cond_d
    :goto_6
    new-instance p0, Landroid/util/Pair;

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    move-result-object v0

    .line 252
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    return-object p0

    .line 256
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    .line 257
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    return-object p0

    .line 262
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 263
    move-result-wide v0

    .line 266
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 271
    move-result-wide v1

    .line 274
    cmp-long v1, v1, v8

    .line 275
    const/4 v2, 0x4

    .line 277
    if-ltz v1, :cond_10

    .line 278
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 280
    move-result-wide v3

    .line 283
    const-wide/32 v10, 0xffff

    .line 284
    cmp-long v1, v3, v10

    .line 287
    if-gtz v1, :cond_10

    .line 289
    new-instance v0, Landroid/util/Pair;

    .line 291
    const/4 v1, 0x3

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    move-result-object v1

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    move-result-object v2

    .line 301
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    return-object v0

    .line 305
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 306
    move-result-wide v0

    .line 309
    cmp-long v0, v0, v8

    .line 310
    if-gez v0, :cond_11

    .line 312
    new-instance v0, Landroid/util/Pair;

    .line 314
    const/16 v1, 0x9

    .line 316
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    move-result-object v1

    .line 321
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    return-object v0

    .line 325
    :cond_11
    new-instance v0, Landroid/util/Pair;

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    move-result-object v1

    .line 331
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    return-object v0

    .line 335
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 336
    new-instance p0, Landroid/util/Pair;

    .line 339
    const/16 v0, 0xc

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    move-result-object v0

    .line 346
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 347
    return-object p0

    .line 350
    :catch_2
    new-instance p0, Landroid/util/Pair;

    .line 351
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    return-object p0
    .line 356
.end method

.method public static readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 2
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 6
    const-string v1, "ExifInterface"

    .line 8
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 10
    if-eq p0, v0, :cond_2

    .line 12
    const/16 v0, 0x4d4d

    .line 14
    if-ne p0, v0, :cond_1

    .line 16
    if-eqz v2, :cond_0

    .line 18
    const-string p0, "readExifSegment: Byte Align MM"

    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    return-object p0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "Invalid byte order: "

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    const-string p0, "readExifSegment: Byte Align II"

    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_3
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 59
    return-object p0
    .line 61
.end method


# virtual methods
.method public final addDefaultValuesForCompatibility()V
    .locals 7

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v3, "DateTime"

    .line 13
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    aget-object v4, v2, v1

    .line 21
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    const-string v0, "ImageWidth"

    .line 30
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    if-nez v3, :cond_1

    .line 38
    aget-object v3, v2, v1

    .line 40
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 42
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 44
    move-result-object v6

    .line 47
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    const-string v0, "ImageLength"

    .line 51
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    aget-object v3, v2, v1

    .line 59
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 61
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 63
    move-result-object v6

    .line 66
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    const-string v0, "Orientation"

    .line 70
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    aget-object v1, v2, v1

    .line 78
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 80
    invoke-static {v4, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 82
    move-result-object v3

    .line 85
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_3
    const-string v0, "LightSource"

    .line 89
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    const/4 v1, 0x1

    .line 97
    aget-object v1, v2, v1

    .line 98
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 100
    invoke-static {v4, v5, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 102
    move-result-object p0

    .line 105
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_4
    return-void
    .line 109
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    const-string v1, "ExifInterface"

    .line 8
    if-eqz v0, :cond_1

    .line 10
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    const-string v0, "PhotographicSensitivity"

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move-object v0, p1

    .line 24
    :goto_0
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_1
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 27
    array-length v4, v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-ge v3, v4, :cond_3

    .line 31
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 33
    aget-object v4, v4, v3

    .line 35
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 40
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 41
    if-eqz v4, :cond_2

    .line 43
    goto :goto_2

    .line 45
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_1

    .line 48
    :cond_3
    move-object v4, v5

    .line 49
    :goto_2
    if-eqz v4, :cond_9

    .line 50
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 52
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 60
    invoke-virtual {v4, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_4
    const-string v0, "GPSTimeStamp"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 72
    if-eqz p1, :cond_8

    .line 73
    const/4 p1, 0x5

    .line 75
    iget v0, v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 76
    if-eq v0, p1, :cond_5

    .line 78
    const/16 p1, 0xa

    .line 80
    if-eq v0, p1, :cond_5

    .line 82
    const-string p0, "GPS Timestamp format is not rational. format="

    .line 84
    invoke-static {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    return-object v5

    .line 89
    :cond_5
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 90
    invoke-virtual {v4, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 95
    check-cast p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 96
    if-eqz p0, :cond_7

    .line 98
    array-length p1, p0

    .line 100
    const/4 v0, 0x3

    .line 101
    if-eq p1, v0, :cond_6

    .line 102
    goto :goto_3

    .line 104
    :cond_6
    aget-object p1, p0, v2

    .line 105
    iget-wide v0, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 107
    long-to-float v0, v0

    .line 109
    iget-wide v1, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 110
    long-to-float p1, v1

    .line 112
    div-float/2addr v0, p1

    .line 113
    float-to-int p1, v0

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object p1

    .line 118
    const/4 v0, 0x1

    .line 119
    aget-object v0, p0, v0

    .line 120
    iget-wide v1, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 122
    long-to-float v1, v1

    .line 124
    iget-wide v2, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 125
    long-to-float v0, v2

    .line 127
    div-float/2addr v1, v0

    .line 128
    float-to-int v0, v1

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v0

    .line 133
    const/4 v1, 0x2

    .line 134
    aget-object p0, p0, v1

    .line 135
    iget-wide v1, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 137
    long-to-float v1, v1

    .line 139
    iget-wide v2, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 140
    long-to-float p0, v2

    .line 142
    div-float/2addr v1, p0

    .line 143
    float-to-int p0, v1

    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object p0

    .line 148
    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    .line 149
    move-result-object p0

    .line 152
    const-string p1, "%02d:%02d:%02d"

    .line 153
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    const-string v0, "Invalid GPS Timestamp array. array="

    .line 162
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 177
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-object v5

    .line 181
    :cond_8
    :try_start_0
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 182
    invoke-virtual {v4, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    .line 184
    move-result-wide p0

    .line 187
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 188
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-object p0

    .line 192
    :catch_0
    :cond_9
    return-object v5
    .line 193
.end method

.method public final getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    const-string v2, "Xmp"

    .line 6
    const-string/jumbo v3, "yes"

    .line 8
    const-string v4, "Heif meta: "

    .line 11
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    .line 13
    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 15
    :try_start_0
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$1;

    .line 18
    invoke-direct {v6, v1}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 20
    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 23
    const/16 v6, 0x21

    .line 26
    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 28
    move-result-object v6

    .line 31
    const/16 v7, 0x22

    .line 32
    invoke-virtual {v5, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 34
    move-result-object v7

    .line 37
    const/16 v8, 0x1a

    .line 38
    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 40
    move-result-object v8

    .line 43
    const/16 v9, 0x11

    .line 44
    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 46
    move-result-object v9

    .line 49
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v8

    .line 53
    if-eqz v8, :cond_0

    .line 54
    const/16 v3, 0x1d

    .line 56
    invoke-virtual {v5, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 61
    const/16 v8, 0x1e

    .line 62
    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 64
    move-result-object v8

    .line 67
    const/16 v9, 0x1f

    .line 68
    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 70
    move-result-object v9

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    const/16 v3, 0x12

    .line 81
    invoke-virtual {v5, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 86
    const/16 v8, 0x13

    .line 87
    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 89
    move-result-object v8

    .line 92
    const/16 v9, 0x18

    .line 93
    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 95
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v3, 0x0

    .line 100
    move-object v8, v3

    .line 101
    move-object v9, v8

    .line 102
    :goto_0
    const/4 v10, 0x0

    .line 103
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 104
    if-eqz v3, :cond_2

    .line 106
    :try_start_1
    aget-object v12, v11, v10

    .line 108
    const-string v13, "ImageWidth"

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    move-result v14

    .line 115
    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 116
    invoke-static {v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 118
    move-result-object v14

    .line 121
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_2
    if-eqz v8, :cond_3

    .line 125
    aget-object v12, v11, v10

    .line 127
    const-string v13, "ImageLength"

    .line 129
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    move-result v14

    .line 134
    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 135
    invoke-static {v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 137
    move-result-object v14

    .line 140
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3
    const/4 v12, 0x6

    .line 144
    if-eqz v9, :cond_7

    .line 145
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 147
    move-result v13

    .line 150
    const/16 v14, 0x5a

    .line 151
    if-eq v13, v14, :cond_6

    .line 153
    const/16 v14, 0xb4

    .line 155
    if-eq v13, v14, :cond_5

    .line 157
    const/16 v14, 0x10e

    .line 159
    if-eq v13, v14, :cond_4

    .line 161
    const/4 v13, 0x1

    .line 163
    goto :goto_1

    .line 164
    :cond_4
    const/16 v13, 0x8

    .line 165
    goto :goto_1

    .line 167
    :cond_5
    const/4 v13, 0x3

    .line 168
    goto :goto_1

    .line 169
    :cond_6
    move v13, v12

    .line 170
    :goto_1
    aget-object v14, v11, v10

    .line 171
    const-string v15, "Orientation"

    .line 173
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 175
    invoke-static {v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 177
    move-result-object v10

    .line 180
    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_7
    if-eqz v6, :cond_a

    .line 184
    if-eqz v7, :cond_a

    .line 186
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 188
    move-result v6

    .line 191
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 192
    move-result v7

    .line 195
    if-le v7, v12, :cond_9

    .line 196
    int-to-long v13, v6

    .line 198
    invoke-virtual {v1, v13, v14}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 199
    new-array v10, v12, [B

    .line 202
    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 204
    add-int/2addr v6, v12

    .line 207
    add-int/lit8 v7, v7, -0x6

    .line 208
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 210
    invoke-static {v10, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 212
    move-result v10

    .line 215
    if-eqz v10, :cond_8

    .line 216
    new-array v7, v7, [B

    .line 218
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 220
    iput v6, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 223
    const/4 v6, 0x0

    .line 225
    invoke-virtual {v0, v6, v7}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 226
    goto :goto_2

    .line 229
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 230
    const-string v1, "Invalid identifier"

    .line 232
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 234
    throw v0

    .line 237
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 238
    const-string v1, "Invalid exif length"

    .line 240
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 242
    throw v0

    .line 245
    :cond_a
    :goto_2
    const/16 v6, 0x29

    .line 246
    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 248
    move-result-object v6

    .line 251
    const/16 v7, 0x2a

    .line 252
    invoke-virtual {v5, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 254
    move-result-object v7

    .line 257
    if-eqz v6, :cond_b

    .line 258
    if-eqz v7, :cond_b

    .line 260
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 262
    move-result v6

    .line 265
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 266
    move-result v7

    .line 269
    int-to-long v12, v6

    .line 270
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 271
    new-array v6, v7, [B

    .line 274
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 276
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    move-result-object v0

    .line 282
    if-nez v0, :cond_b

    .line 283
    const/4 v0, 0x0

    .line 285
    aget-object v0, v11, v0

    .line 286
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 288
    const/16 v20, 0x1

    .line 290
    move-object/from16 v16, v1

    .line 292
    move-wide/from16 v17, v12

    .line 294
    move-object/from16 v19, v6

    .line 296
    move/from16 v21, v7

    .line 298
    invoke-direct/range {v16 .. v21}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 300
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_b
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 306
    if-eqz v0, :cond_c

    .line 308
    const-string v0, "ExifInterface"

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string/jumbo v2, "x"

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v2, ", rotation "

    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    move-result-object v1

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :cond_c
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 344
    :catch_0
    return-void

    .line 347
    :catchall_0
    move-exception v0

    .line 348
    goto :goto_3

    .line 349
    :catch_1
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 350
    const-string v1, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 352
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 354
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 358
    :catch_2
    throw v0
    .line 361
.end method

.method public final getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p3

    .line 6
    const-string v3, "ExifInterface"

    .line 8
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 10
    if-eqz v4, :cond_0

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    const-string v6, "getJpegAttributes starting with: "

    .line 16
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 27
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    iput-object v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 35
    move-result v5

    .line 38
    const/4 v6, -0x1

    .line 39
    const-string v7, "Invalid marker: "

    .line 40
    if-ne v5, v6, :cond_18

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 44
    move-result v8

    .line 47
    const/16 v9, -0x28

    .line 48
    if-ne v8, v9, :cond_17

    .line 50
    const/4 v5, 0x2

    .line 52
    move v7, v5

    .line 53
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 54
    move-result v8

    .line 57
    if-ne v8, v6, :cond_16

    .line 58
    const/4 v8, 0x1

    .line 60
    add-int/2addr v7, v8

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 62
    move-result v9

    .line 65
    if-eqz v4, :cond_1

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    .line 68
    const-string v11, "Found JPEG segment indicator: "

    .line 70
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    and-int/lit16 v11, v9, 0xff

    .line 75
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 77
    move-result-object v11

    .line 80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v10

    .line 87
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    add-int/2addr v7, v8

    .line 91
    const/16 v10, -0x27

    .line 92
    if-eq v9, v10, :cond_15

    .line 94
    const/16 v10, -0x26

    .line 96
    if-ne v9, v10, :cond_2

    .line 98
    goto/16 :goto_c

    .line 100
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 102
    move-result v10

    .line 105
    sub-int/2addr v10, v5

    .line 106
    add-int/2addr v7, v5

    .line 107
    if-eqz v4, :cond_3

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    .line 110
    const-string v12, "JPEG segment: "

    .line 112
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    and-int/lit16 v12, v9, 0xff

    .line 117
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 119
    move-result-object v12

    .line 122
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v12, " (length: "

    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v12, v10, 0x2

    .line 131
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v12, ")"

    .line 136
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v11

    .line 144
    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    const-string v11, "Invalid length"

    .line 148
    if-ltz v10, :cond_14

    .line 150
    const/4 v12, 0x0

    .line 152
    const/16 v13, -0x1f

    .line 153
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 155
    if-eq v9, v13, :cond_7

    .line 157
    const/4 v13, -0x2

    .line 159
    if-eq v9, v13, :cond_6

    .line 160
    packed-switch v9, :pswitch_data_0

    .line 162
    packed-switch v9, :pswitch_data_1

    .line 165
    packed-switch v9, :pswitch_data_2

    .line 168
    packed-switch v9, :pswitch_data_3

    .line 171
    goto/16 :goto_b

    .line 174
    :pswitch_0
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 176
    aget-object v8, v14, v2

    .line 179
    const/4 v9, 0x4

    .line 181
    if-eq v2, v9, :cond_4

    .line 182
    const-string v12, "ImageLength"

    .line 184
    goto :goto_1

    .line 186
    :cond_4
    const-string v12, "ThumbnailImageLength"

    .line 187
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 189
    move-result v13

    .line 192
    int-to-long v5, v13

    .line 193
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 194
    invoke-static {v5, v6, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 196
    move-result-object v5

    .line 199
    invoke-virtual {v8, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    aget-object v5, v14, v2

    .line 203
    if-eq v2, v9, :cond_5

    .line 205
    const-string v6, "ImageWidth"

    .line 207
    goto :goto_2

    .line 209
    :cond_5
    const-string v6, "ThumbnailImageWidth"

    .line 210
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 212
    move-result v8

    .line 215
    int-to-long v8, v8

    .line 216
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 217
    invoke-static {v8, v9, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 219
    move-result-object v8

    .line 222
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    add-int/lit8 v10, v10, -0x5

    .line 226
    goto/16 :goto_b

    .line 228
    :cond_6
    new-array v5, v10, [B

    .line 230
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 232
    const-string v6, "UserComment"

    .line 235
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    move-result-object v9

    .line 240
    if-nez v9, :cond_12

    .line 241
    aget-object v8, v14, v8

    .line 243
    new-instance v9, Ljava/lang/String;

    .line 245
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 247
    invoke-direct {v9, v5, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 249
    invoke-static {v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 252
    move-result-object v5

    .line 255
    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    goto/16 :goto_a

    .line 259
    :cond_7
    new-array v5, v10, [B

    .line 261
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 263
    add-int v6, v7, v10

    .line 266
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 268
    if-nez v9, :cond_8

    .line 270
    :goto_3
    move v8, v12

    .line 272
    goto :goto_5

    .line 273
    :cond_8
    array-length v13, v9

    .line 274
    if-ge v10, v13, :cond_9

    .line 275
    goto :goto_3

    .line 277
    :cond_9
    move v13, v12

    .line 278
    :goto_4
    array-length v15, v9

    .line 279
    if-ge v13, v15, :cond_b

    .line 280
    aget-byte v15, v5, v13

    .line 282
    aget-byte v8, v9, v13

    .line 284
    if-eq v15, v8, :cond_a

    .line 286
    goto :goto_3

    .line 288
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 289
    const/4 v8, 0x1

    .line 291
    goto :goto_4

    .line 292
    :cond_b
    const/4 v8, 0x1

    .line 293
    :goto_5
    if-eqz v8, :cond_c

    .line 294
    array-length v8, v9

    .line 296
    invoke-static {v5, v8, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 297
    move-result-object v5

    .line 300
    add-int v7, p2, v7

    .line 301
    array-length v8, v9

    .line 303
    add-int/2addr v7, v8

    .line 304
    iput v7, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 305
    invoke-virtual {v0, v2, v5}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 307
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 310
    invoke-direct {v7, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 312
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 315
    goto :goto_9

    .line 318
    :cond_c
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 319
    if-nez v8, :cond_d

    .line 321
    :goto_6
    move v9, v12

    .line 323
    goto :goto_8

    .line 324
    :cond_d
    array-length v9, v8

    .line 325
    if-ge v10, v9, :cond_e

    .line 326
    goto :goto_6

    .line 328
    :cond_e
    move v9, v12

    .line 329
    :goto_7
    array-length v13, v8

    .line 330
    if-ge v9, v13, :cond_10

    .line 331
    aget-byte v13, v5, v9

    .line 333
    aget-byte v15, v8, v9

    .line 335
    if-eq v13, v15, :cond_f

    .line 337
    goto :goto_6

    .line 339
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 340
    goto :goto_7

    .line 342
    :cond_10
    const/4 v9, 0x1

    .line 343
    :goto_8
    if-eqz v9, :cond_11

    .line 344
    array-length v9, v8

    .line 346
    add-int/2addr v9, v7

    .line 347
    array-length v7, v8

    .line 348
    invoke-static {v5, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 349
    move-result-object v5

    .line 352
    const-string v7, "Xmp"

    .line 353
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    move-result-object v8

    .line 358
    if-nez v8, :cond_11

    .line 359
    aget-object v8, v14, v12

    .line 361
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 363
    const/16 v20, 0x1

    .line 365
    array-length v13, v5

    .line 367
    int-to-long v14, v9

    .line 368
    move-object/from16 v16, v10

    .line 369
    move-wide/from16 v17, v14

    .line 371
    move-object/from16 v19, v5

    .line 373
    move/from16 v21, v13

    .line 375
    invoke-direct/range {v16 .. v21}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 377
    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const/4 v5, 0x1

    .line 383
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    .line 384
    :cond_11
    :goto_9
    move v7, v6

    .line 386
    :cond_12
    :goto_a
    move v10, v12

    .line 387
    :goto_b
    if-ltz v10, :cond_13

    .line 388
    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 390
    add-int/2addr v7, v10

    .line 393
    const/4 v5, 0x2

    .line 394
    const/4 v6, -0x1

    .line 395
    goto/16 :goto_0

    .line 396
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 398
    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 400
    throw v0

    .line 403
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 404
    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 406
    throw v0

    .line 409
    :cond_15
    :goto_c
    iget-object v0, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 410
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 412
    return-void

    .line 414
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    .line 417
    const-string v2, "Invalid marker:"

    .line 419
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    and-int/lit16 v2, v8, 0xff

    .line 424
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 426
    move-result-object v2

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object v1

    .line 436
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 437
    throw v0

    .line 440
    :cond_17
    new-instance v0, Ljava/io/IOException;

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    .line 443
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    and-int/lit16 v2, v5, 0xff

    .line 448
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 450
    move-result-object v2

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    move-result-object v1

    .line 460
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 461
    throw v0

    .line 464
    :cond_18
    new-instance v0, Ljava/io/IOException;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    .line 467
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    and-int/lit16 v2, v5, 0xff

    .line 472
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 474
    move-result-object v2

    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    move-result-object v1

    .line 484
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 485
    throw v0

    .line 488
    nop

    .line 489
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 490
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 502
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 512
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 522
.end method

.method public final getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    const/16 v2, 0x1388

    .line 6
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    new-array v3, v2, [B

    .line 11
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 16
    const/4 v4, 0x0

    .line 19
    move v0, v4

    .line 20
    :goto_0
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 21
    array-length v6, v5

    .line 23
    if-ge v0, v6, :cond_1

    .line 24
    aget-byte v6, v3, v0

    .line 26
    aget-byte v5, v5, v0

    .line 28
    if-eq v6, v5, :cond_0

    .line 30
    move v0, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    :goto_1
    const/4 v5, 0x4

    .line 38
    if-eqz v0, :cond_2

    .line 39
    return v5

    .line 41
    :cond_2
    const-string v0, "FUJIFILMCCD-RAW"

    .line 42
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 44
    move-result-object v6

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    move-result-object v0

    .line 51
    move v6, v4

    .line 52
    :goto_2
    array-length v8, v0

    .line 53
    if-ge v6, v8, :cond_4

    .line 54
    aget-byte v8, v3, v6

    .line 56
    aget-byte v9, v0, v6

    .line 58
    if-eq v8, v9, :cond_3

    .line 60
    move v0, v4

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 64
    goto :goto_2

    .line 66
    :cond_4
    const/4 v0, 0x1

    .line 67
    :goto_3
    if-eqz v0, :cond_5

    .line 68
    const/16 v0, 0x9

    .line 70
    return v0

    .line 72
    :cond_5
    :try_start_0
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 73
    invoke-direct {v8, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    invoke-virtual {v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 78
    move-result v0

    .line 81
    int-to-long v9, v0

    .line 82
    new-array v0, v5, [B

    .line 83
    invoke-virtual {v8, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 85
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 88
    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 90
    move-result v0

    .line 93
    if-nez v0, :cond_6

    .line 94
    goto/16 :goto_8

    .line 96
    :cond_6
    const-wide/16 v11, 0x1

    .line 98
    cmp-long v0, v9, v11

    .line 100
    const-wide/16 v13, 0x8

    .line 102
    if-nez v0, :cond_7

    .line 104
    invoke-virtual {v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    .line 106
    move-result-wide v9

    .line 109
    const-wide/16 v15, 0x10

    .line 110
    cmp-long v0, v9, v15

    .line 112
    if-gez v0, :cond_8

    .line 114
    goto :goto_8

    .line 116
    :cond_7
    move-wide v15, v13

    .line 117
    :cond_8
    int-to-long v6, v2

    .line 118
    cmp-long v0, v9, v6

    .line 119
    if-lez v0, :cond_9

    .line 121
    move-wide v9, v6

    .line 123
    :cond_9
    sub-long/2addr v9, v15

    .line 124
    cmp-long v0, v9, v13

    .line 125
    if-gez v0, :cond_a

    .line 127
    goto :goto_8

    .line 129
    :cond_a
    new-array v0, v5, [B

    .line 130
    const-wide/16 v6, 0x0

    .line 132
    move v2, v4

    .line 134
    move v13, v2

    .line 135
    :goto_4
    const-wide/16 v14, 0x4

    .line 136
    div-long v14, v9, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    cmp-long v14, v6, v14

    .line 140
    if-gez v14, :cond_10

    .line 142
    :try_start_2
    invoke-virtual {v8, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    cmp-long v14, v6, v11

    .line 147
    if-nez v14, :cond_b

    .line 149
    goto :goto_6

    .line 151
    :cond_b
    :try_start_3
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 152
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 154
    move-result v14

    .line 157
    if-eqz v14, :cond_c

    .line 158
    const/4 v2, 0x1

    .line 160
    goto :goto_5

    .line 161
    :cond_c
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 162
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 164
    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    if-eqz v14, :cond_d

    .line 168
    const/4 v13, 0x1

    .line 170
    :cond_d
    :goto_5
    if-eqz v2, :cond_e

    .line 171
    if-eqz v13, :cond_e

    .line 173
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 175
    const/4 v0, 0x1

    .line 178
    goto :goto_9

    .line 179
    :cond_e
    :goto_6
    add-long/2addr v6, v11

    .line 180
    goto :goto_4

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    goto/16 :goto_19

    .line 183
    :catch_0
    move-exception v0

    .line 185
    goto :goto_7

    .line 186
    :catchall_1
    move-exception v0

    .line 187
    const/4 v6, 0x0

    .line 188
    goto/16 :goto_18

    .line 189
    :catch_1
    move-exception v0

    .line 191
    const/4 v8, 0x0

    .line 192
    :goto_7
    :try_start_4
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 193
    if-eqz v2, :cond_f

    .line 195
    const-string v2, "ExifInterface"

    .line 197
    const-string v6, "Exception parsing HEIF file type box."

    .line 199
    invoke-static {v2, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 201
    :cond_f
    if-eqz v8, :cond_11

    .line 204
    :catch_2
    :cond_10
    :goto_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 206
    :cond_11
    move v0, v4

    .line 209
    :goto_9
    if-eqz v0, :cond_12

    .line 210
    const/16 v0, 0xc

    .line 212
    return v0

    .line 214
    :cond_12
    :try_start_5
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 215
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 217
    :try_start_6
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 220
    move-result-object v0

    .line 223
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 224
    iput-object v0, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 226
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 228
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 231
    const/16 v6, 0x4f52

    .line 232
    if-eq v0, v6, :cond_14

    .line 234
    const/16 v6, 0x5352

    .line 236
    if-ne v0, v6, :cond_13

    .line 238
    goto :goto_a

    .line 240
    :cond_13
    move v0, v4

    .line 241
    goto :goto_b

    .line 242
    :cond_14
    :goto_a
    const/4 v0, 0x1

    .line 243
    :goto_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 244
    goto :goto_d

    .line 247
    :catchall_2
    move-exception v0

    .line 248
    move-object v6, v2

    .line 249
    goto :goto_c

    .line 250
    :catchall_3
    move-exception v0

    .line 251
    const/4 v6, 0x0

    .line 252
    :goto_c
    if-eqz v6, :cond_15

    .line 253
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 255
    :cond_15
    throw v0

    .line 258
    :catch_3
    const/4 v2, 0x0

    .line 259
    :catch_4
    if-eqz v2, :cond_16

    .line 260
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 262
    :cond_16
    move v0, v4

    .line 265
    :goto_d
    if-eqz v0, :cond_17

    .line 266
    const/4 v0, 0x7

    .line 268
    return v0

    .line 269
    :cond_17
    :try_start_7
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 270
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 272
    :try_start_8
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 275
    move-result-object v0

    .line 278
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 279
    iput-object v0, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 281
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 283
    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 286
    const/16 v1, 0x55

    .line 287
    if-ne v0, v1, :cond_18

    .line 289
    const/4 v0, 0x1

    .line 291
    goto :goto_e

    .line 292
    :cond_18
    move v0, v4

    .line 293
    :goto_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 294
    goto :goto_11

    .line 297
    :catchall_4
    move-exception v0

    .line 298
    move-object v6, v2

    .line 299
    goto :goto_f

    .line 300
    :catch_5
    move-object v6, v2

    .line 301
    goto :goto_10

    .line 302
    :catchall_5
    move-exception v0

    .line 303
    const/4 v6, 0x0

    .line 304
    :goto_f
    if-eqz v6, :cond_19

    .line 305
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 307
    :cond_19
    throw v0

    .line 310
    :catch_6
    const/4 v6, 0x0

    .line 311
    :goto_10
    if-eqz v6, :cond_1a

    .line 312
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 314
    :cond_1a
    move v0, v4

    .line 317
    :goto_11
    if-eqz v0, :cond_1b

    .line 318
    const/16 v0, 0xa

    .line 320
    return v0

    .line 322
    :cond_1b
    move v0, v4

    .line 323
    :goto_12
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 324
    array-length v2, v1

    .line 326
    if-ge v0, v2, :cond_1d

    .line 327
    aget-byte v2, v3, v0

    .line 329
    aget-byte v1, v1, v0

    .line 331
    if-eq v2, v1, :cond_1c

    .line 333
    move v0, v4

    .line 335
    goto :goto_13

    .line 336
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 337
    goto :goto_12

    .line 339
    :cond_1d
    const/4 v0, 0x1

    .line 340
    :goto_13
    if-eqz v0, :cond_1e

    .line 341
    const/16 v0, 0xd

    .line 343
    return v0

    .line 345
    :cond_1e
    move v0, v4

    .line 346
    :goto_14
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 347
    array-length v2, v1

    .line 349
    if-ge v0, v2, :cond_20

    .line 350
    aget-byte v2, v3, v0

    .line 352
    aget-byte v1, v1, v0

    .line 354
    if-eq v2, v1, :cond_1f

    .line 356
    goto :goto_16

    .line 358
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    .line 359
    goto :goto_14

    .line 361
    :cond_20
    move v0, v4

    .line 362
    :goto_15
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 363
    array-length v6, v2

    .line 365
    if-ge v0, v6, :cond_22

    .line 366
    array-length v6, v1

    .line 368
    add-int/2addr v6, v0

    .line 369
    add-int/2addr v6, v5

    .line 370
    aget-byte v6, v3, v6

    .line 371
    aget-byte v2, v2, v0

    .line 373
    if-eq v6, v2, :cond_21

    .line 375
    :goto_16
    move v7, v4

    .line 377
    goto :goto_17

    .line 378
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 379
    goto :goto_15

    .line 381
    :cond_22
    const/4 v7, 0x1

    .line 382
    :goto_17
    if-eqz v7, :cond_23

    .line 383
    const/16 v0, 0xe

    .line 385
    return v0

    .line 387
    :cond_23
    return v4

    .line 388
    :catchall_6
    move-exception v0

    .line 389
    move-object v6, v8

    .line 390
    :goto_18
    move-object v8, v6

    .line 391
    :goto_19
    if-eqz v8, :cond_24

    .line 392
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 394
    :cond_24
    throw v0
    .line 397
.end method

.method public final getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5
    const/4 v0, 0x1

    .line 7
    aget-object v1, p1, v0

    .line 8
    const-string v2, "MakerNote"

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    if-eqz v1, :cond_6

    .line 18
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 20
    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 22
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 24
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 27
    iput-object v1, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 29
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 31
    array-length v3, v1

    .line 33
    new-array v3, v3, [B

    .line 34
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 36
    const-wide/16 v4, 0x0

    .line 39
    invoke-virtual {v2, v4, v5}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 41
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 44
    array-length v5, v4

    .line 46
    new-array v5, v5, [B

    .line 47
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 49
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    const-wide/16 v3, 0x8

    .line 58
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    const-wide/16 v3, 0xc

    .line 70
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 72
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 75
    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 76
    const/4 v1, 0x7

    .line 79
    aget-object v2, p1, v1

    .line 80
    const-string v3, "PreviewImageStart"

    .line 82
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 87
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 88
    aget-object v1, p1, v1

    .line 90
    const-string v3, "PreviewImageLength"

    .line 92
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 97
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 98
    if-eqz v2, :cond_2

    .line 100
    if-eqz v1, :cond_2

    .line 102
    const/4 v3, 0x5

    .line 104
    aget-object v4, p1, v3

    .line 105
    const-string v5, "JPEGInterchangeFormat"

    .line 107
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    aget-object v2, p1, v3

    .line 112
    const-string v3, "JPEGInterchangeFormatLength"

    .line 114
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    const/16 v1, 0x8

    .line 119
    aget-object v1, p1, v1

    .line 121
    const-string v2, "AspectFrame"

    .line 123
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 128
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 129
    if-eqz v1, :cond_6

    .line 131
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 133
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 135
    move-result-object v1

    .line 138
    check-cast v1, [I

    .line 139
    if-eqz v1, :cond_5

    .line 141
    array-length v2, v1

    .line 143
    const/4 v3, 0x4

    .line 144
    if-eq v2, v3, :cond_3

    .line 145
    goto :goto_1

    .line 147
    :cond_3
    const/4 v2, 0x2

    .line 148
    aget v2, v1, v2

    .line 149
    const/4 v3, 0x0

    .line 151
    aget v4, v1, v3

    .line 152
    if-le v2, v4, :cond_6

    .line 154
    const/4 v5, 0x3

    .line 156
    aget v5, v1, v5

    .line 157
    aget v1, v1, v0

    .line 159
    if-le v5, v1, :cond_6

    .line 161
    sub-int/2addr v2, v4

    .line 163
    add-int/2addr v2, v0

    .line 164
    sub-int/2addr v5, v1

    .line 165
    add-int/2addr v5, v0

    .line 166
    if-ge v2, v5, :cond_4

    .line 167
    add-int/2addr v2, v5

    .line 169
    sub-int v5, v2, v5

    .line 170
    sub-int/2addr v2, v5

    .line 172
    :cond_4
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 173
    invoke-static {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 175
    move-result-object v0

    .line 178
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 179
    invoke-static {v5, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 181
    move-result-object p0

    .line 184
    aget-object v1, p1, v3

    .line 185
    const-string v2, "ImageWidth"

    .line 187
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    aget-object p1, p1, v3

    .line 192
    const-string v0, "ImageLength"

    .line 194
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    goto :goto_2

    .line 199
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 200
    const-string p1, "Invalid aspect frame values. frame="

    .line 202
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p0

    .line 217
    const-string p1, "ExifInterface"

    .line 218
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_6
    :goto_2
    return-void
    .line 223
.end method

.method public final getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "getPngAttributes starting with: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 27
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 29
    array-length v1, v0

    .line 31
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 32
    array-length v0, v0

    .line 35
    const/4 v1, 0x0

    .line 36
    add-int/2addr v0, v1

    .line 37
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 38
    move-result v2

    .line 41
    const/4 v3, 0x4

    .line 42
    add-int/2addr v0, v3

    .line 43
    new-array v4, v3, [B

    .line 44
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 46
    add-int/2addr v0, v3

    .line 49
    const/16 v3, 0x10

    .line 50
    if-ne v0, v3, :cond_2

    .line 52
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    .line 54
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 56
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    goto :goto_1

    .line 62
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 63
    const-string p1, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    .line 65
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0

    .line 70
    :cond_2
    :goto_1
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    .line 71
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 73
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    goto :goto_2

    .line 79
    :cond_3
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 80
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 82
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    new-array v2, v2, [B

    .line 88
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 90
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 93
    move-result p1

    .line 96
    new-instance v3, Ljava/util/zip/CRC32;

    .line 97
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 99
    invoke-virtual {v3, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 102
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 105
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 108
    move-result-wide v4

    .line 111
    long-to-int v4, v4

    .line 112
    if-ne v4, p1, :cond_4

    .line 113
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 115
    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 117
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 120
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 123
    invoke-direct {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 125
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 128
    :goto_2
    return-void

    .line 131
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v1, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string p1, ", calculated CRC value: "

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 152
    move-result-wide v1

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p0

    .line 166
    :cond_5
    add-int/lit8 v2, v2, 0x4

    .line 167
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    add-int/2addr v0, v2

    .line 172
    goto/16 :goto_0

    .line 173
    :catch_0
    new-instance p0, Ljava/io/IOException;

    .line 175
    const-string p1, "Encountered corrupt PNG file."

    .line 177
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    throw p0
    .line 182
.end method

.method public final getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "getRafAttributes starting with: "

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    const/16 v2, 0x54

    .line 25
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 27
    const/4 v2, 0x4

    .line 30
    new-array v3, v2, [B

    .line 31
    new-array v4, v2, [B

    .line 33
    new-array v2, v2, [B

    .line 35
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 37
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 40
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 43
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 46
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    move-result v3

    .line 53
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 54
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    move-result v4

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    move-result v2

    .line 69
    new-array v4, v4, [B

    .line 70
    iget v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 72
    sub-int v5, v3, v5

    .line 74
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 76
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 79
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 82
    invoke-direct {v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 84
    const/4 v4, 0x5

    .line 87
    invoke-virtual {p0, v5, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 88
    iget v3, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 91
    sub-int/2addr v2, v3

    .line 93
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 94
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 97
    iput-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 99
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 101
    move-result v2

    .line 104
    if-eqz v1, :cond_1

    .line 105
    const-string v3, "numberOfDirectoryEntry: "

    .line 107
    invoke-static {v3, v2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    :cond_1
    const/4 v3, 0x0

    .line 112
    move v4, v3

    .line 113
    :goto_0
    if-ge v4, v2, :cond_4

    .line 114
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 116
    move-result v5

    .line 119
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 120
    move-result v6

    .line 123
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 124
    iget v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 126
    if-ne v5, v7, :cond_3

    .line 128
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 130
    move-result v2

    .line 133
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 134
    move-result p1

    .line 137
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 138
    invoke-static {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 140
    move-result-object v4

    .line 143
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 144
    invoke-static {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 146
    move-result-object v5

    .line 149
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 150
    aget-object v6, p0, v3

    .line 152
    const-string v7, "ImageLength"

    .line 154
    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    aget-object p0, p0, v3

    .line 159
    const-string v3, "ImageWidth"

    .line 161
    invoke-virtual {p0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    if-eqz v1, :cond_2

    .line 166
    const-string p0, "Updated to length: "

    .line 168
    const-string v1, ", width: "

    .line 170
    invoke-static {p0, v2, v1, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 172
    :cond_2
    return-void

    .line 175
    :cond_3
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 176
    add-int/lit8 v4, v4, 0x1

    .line 179
    goto :goto_0

    .line 181
    :cond_4
    return-void
    .line 182
.end method

.method public final getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 9
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 13
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 17
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 20
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 23
    const/16 v0, 0x8

    .line 25
    if-ne p1, v0, :cond_0

    .line 27
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 29
    const/4 v0, 0x1

    .line 31
    aget-object v1, p1, v0

    .line 32
    const-string v2, "MakerNote"

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 40
    if-eqz v1, :cond_0

    .line 42
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 44
    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 46
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 48
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 51
    iput-object v1, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 53
    const/4 v1, 0x6

    .line 55
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 56
    const/16 v1, 0x9

    .line 59
    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 61
    aget-object p0, p1, v1

    .line 64
    const-string v1, "ColorSpace"

    .line 66
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 72
    if-eqz p0, :cond_0

    .line 74
    aget-object p1, p1, v0

    .line 76
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    return-void
    .line 81
.end method

.method public final getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "getRw2Attributes starting with: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 25
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 28
    const/4 v0, 0x0

    .line 30
    aget-object v1, p1, v0

    .line 31
    const-string v2, "JpgFromRaw"

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 39
    if-eqz v1, :cond_1

    .line 41
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 43
    iget-object v3, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 45
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 47
    iget-wide v3, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 50
    long-to-int v1, v3

    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {p0, v2, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 54
    :cond_1
    aget-object p0, p1, v0

    .line 57
    const-string v0, "ISO"

    .line 59
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 64
    check-cast p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 65
    const/4 v0, 0x1

    .line 67
    aget-object v1, p1, v0

    .line 68
    const-string v2, "PhotographicSensitivity"

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 76
    if-eqz p0, :cond_2

    .line 78
    if-nez v1, :cond_2

    .line 80
    aget-object p1, p1, v0

    .line 82
    invoke-virtual {p1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    return-void
    .line 87
.end method

.method public final getThumbnailBytes()[B
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 8
    if-eqz v0, :cond_1

    .line 10
    return-object v0

    .line 12
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 13
    invoke-static {v0}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    .line 19
    const-wide/16 v3, 0x0

    .line 21
    invoke-static {v0, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 23
    new-instance v2, Ljava/io/FileInputStream;

    .line 26
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 31
    invoke-direct {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 36
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 38
    add-int/2addr v4, v5

    .line 40
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 41
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 44
    new-array v4, v4, [B

    .line 46
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 48
    iput-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 53
    if-eqz v0, :cond_2

    .line 56
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 58
    :cond_2
    return-object v4

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception p0

    .line 66
    move-object v2, v1

    .line 67
    goto :goto_0

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    move-object v0, v1

    .line 70
    goto :goto_1

    .line 71
    :catch_2
    move-exception p0

    .line 72
    move-object v0, v1

    .line 73
    move-object v2, v0

    .line 74
    :goto_0
    :try_start_3
    const-string v3, "ExifInterface"

    .line 75
    const-string v4, "Encountered exception while getting thumbnail"

    .line 77
    invoke-static {v3, v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 79
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    if-eqz v0, :cond_3

    .line 85
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 87
    :cond_3
    return-object v1

    .line 90
    :catchall_2
    move-exception p0

    .line 91
    move-object v1, v2

    .line 92
    :goto_1
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    if-eqz v0, :cond_4

    .line 96
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 98
    :cond_4
    throw p0
    .line 101
.end method

.method public final getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "getWebpAttributes starting with: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 27
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 29
    array-length v0, v0

    .line 31
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 32
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 35
    move-result v0

    .line 38
    add-int/lit8 v0, v0, 0x8

    .line 39
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 41
    array-length v2, v1

    .line 43
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 44
    array-length v1, v1

    .line 47
    add-int/lit8 v1, v1, 0x8

    .line 48
    :goto_0
    const/4 v2, 0x4

    .line 50
    :try_start_0
    new-array v3, v2, [B

    .line 51
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 53
    add-int/2addr v1, v2

    .line 56
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 57
    move-result v4

    .line 60
    add-int/2addr v1, v2

    .line 61
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 62
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    new-array v0, v4, [B

    .line 70
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 72
    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 75
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 78
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 81
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 83
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 86
    goto :goto_1

    .line 89
    :cond_1
    rem-int/lit8 v2, v4, 0x2

    .line 90
    const/4 v3, 0x1

    .line 92
    if-ne v2, v3, :cond_2

    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 95
    :cond_2
    add-int/2addr v1, v4

    .line 97
    if-ne v1, v0, :cond_3

    .line 98
    :goto_1
    return-void

    .line 100
    :cond_3
    if-gt v1, v0, :cond_4

    .line 101
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 103
    goto :goto_0

    .line 106
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 107
    const-string p1, "Encountered WebP file with invalid chunk size"

    .line 109
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    throw p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    new-instance p0, Ljava/io/IOException;

    .line 115
    const-string p1, "Encountered corrupt WebP file."

    .line 117
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    throw p0
    .line 122
.end method

.method public final handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    if-eqz v0, :cond_3

    .line 18
    if-eqz p2, :cond_3

    .line 20
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 28
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    move-result p2

    .line 33
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 34
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 39
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_2

    .line 42
    if-lez p2, :cond_2

    .line 44
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 47
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 49
    if-nez v1, :cond_1

    .line 51
    new-array v1, p2, [B

    .line 53
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 55
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 58
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 61
    :cond_1
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 63
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 65
    :cond_2
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 67
    if-eqz p0, :cond_3

    .line 69
    const-string p0, "Setting thumbnail attributes with offset: "

    .line 71
    const-string p1, ", length: "

    .line 73
    const-string v1, "ExifInterface"

    .line 75
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 77
    :cond_3
    return-void
    .line 80
.end method

.method public final isThumbnail(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8
    const-string v1, "ImageWidth"

    .line 10
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    if-eqz p1, :cond_0

    .line 20
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    move-result v0

    .line 27
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 28
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    move-result p0

    .line 33
    const/16 p1, 0x200

    .line 34
    if-gt v0, p1, :cond_0

    .line 36
    if-gt p0, p1, :cond_0

    .line 38
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return p0
    .line 43
.end method

.method public final loadAttributes(Ljava/io/InputStream;)V
    .locals 7

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    :try_start_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6
    array-length v3, v3

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 11
    new-instance v4, Ljava/util/HashMap;

    .line 13
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    aput-object v4, v3, v2

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 23
    const/16 v3, 0x1388

    .line 25
    invoke-direct {v2, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 27
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    .line 30
    move-result p1

    .line 33
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 34
    const/16 v3, 0xe

    .line 36
    const/16 v4, 0xd

    .line 38
    const/16 v5, 0x9

    .line 40
    const/4 v6, 0x4

    .line 42
    if-eq p1, v6, :cond_2

    .line 43
    if-eq p1, v5, :cond_2

    .line 45
    if-eq p1, v4, :cond_2

    .line 47
    if-ne p1, v3, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    const/4 p1, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    move p1, v1

    .line 54
    :goto_2
    if-eqz p1, :cond_6

    .line 55
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 57
    invoke-direct {p1, v2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 62
    const/16 v2, 0xc

    .line 64
    if-ne v1, v2, :cond_3

    .line 66
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 68
    goto :goto_3

    .line 71
    :cond_3
    const/4 v2, 0x7

    .line 72
    if-ne v1, v2, :cond_4

    .line 73
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 75
    goto :goto_3

    .line 78
    :cond_4
    const/16 v2, 0xa

    .line 79
    if-ne v1, v2, :cond_5

    .line 81
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 83
    goto :goto_3

    .line 86
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 87
    :goto_3
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 90
    int-to-long v1, v1

    .line 92
    invoke-virtual {p1, v1, v2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 93
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 96
    goto :goto_4

    .line 99
    :cond_6
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 100
    invoke-direct {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 105
    if-ne v2, v6, :cond_7

    .line 107
    invoke-virtual {p0, p1, v1, v1}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 109
    goto :goto_4

    .line 112
    :cond_7
    if-ne v2, v4, :cond_8

    .line 113
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 115
    goto :goto_4

    .line 118
    :cond_8
    if-ne v2, v5, :cond_9

    .line 119
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 121
    goto :goto_4

    .line 124
    :cond_9
    if-ne v2, v3, :cond_a

    .line 125
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 130
    if-eqz v0, :cond_d

    .line 133
    goto :goto_7

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    goto :goto_5

    .line 137
    :catch_0
    move-exception p1

    .line 138
    if-eqz v0, :cond_c

    .line 139
    :try_start_1
    const-string v1, "ExifInterface"

    .line 141
    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 143
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    goto :goto_6

    .line 148
    :goto_5
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 149
    if-eqz v0, :cond_b

    .line 152
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 154
    :cond_b
    throw p1

    .line 157
    :cond_c
    :goto_6
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 158
    if-eqz v0, :cond_d

    .line 161
    :goto_7
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 163
    :cond_d
    return-void
    .line 166
.end method

.method public final parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 8
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 10
    move-result v0

    .line 13
    iget p0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 14
    const/4 v1, 0x7

    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    const/16 v1, 0xa

    .line 19
    if-eq p0, v1, :cond_1

    .line 21
    const/16 p0, 0x2a

    .line 23
    if-ne v0, p0, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "Invalid start code: "

    .line 32
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 52
    move-result p0

    .line 55
    const/16 v0, 0x8

    .line 56
    if-lt p0, v0, :cond_3

    .line 58
    add-int/lit8 p0, p0, -0x8

    .line 60
    if-lez p0, :cond_2

    .line 62
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 64
    :cond_2
    return-void

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 68
    const-string v0, "Invalid first Ifd offset: "

    .line 70
    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
    .line 79
.end method

.method public final printAttributes()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    const-string v2, "The size of tag group["

    .line 8
    const-string v3, "]: "

    .line 10
    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v2

    .line 15
    aget-object v3, v1, v0

    .line 16
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 18
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 28
    const-string v3, "ExifInterface"

    .line 29
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    aget-object v1, v1, v0

    .line 34
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 36
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v6, "tagName: "

    .line 64
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v2, ", tagType: "

    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 87
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v2, ", tagValue: \'"

    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 96
    invoke-virtual {v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 101
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "\'"

    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 113
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    goto :goto_1

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 118
    goto :goto_0

    .line 120
    :cond_1
    return-void
    .line 121
.end method

.method public final readExifSegment(I[B)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 2
    invoke-direct {v0, p2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 7
    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 10
    return-void
    .line 13
.end method

.method public final readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 13
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 14
    check-cast v4, Ljava/util/HashSet;

    .line 16
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 21
    move-result v3

    .line 24
    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 25
    const-string v6, "ExifInterface"

    .line 27
    if-eqz v5, :cond_0

    .line 29
    const-string v7, "numberOfDirectoryEntry: "

    .line 31
    invoke-static {v7, v3, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    :cond_0
    if-gtz v3, :cond_1

    .line 36
    return-void

    .line 38
    :cond_1
    const/4 v7, 0x0

    .line 39
    :goto_0
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 40
    if-ge v7, v3, :cond_2f

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 44
    move-result v10

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 48
    move-result v11

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 52
    move-result v15

    .line 55
    iget v12, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 56
    int-to-long v12, v12

    .line 58
    const-wide/16 v16, 0x4

    .line 59
    add-long v13, v12, v16

    .line 61
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 63
    aget-object v12, v12, v2

    .line 65
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v8

    .line 70
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v8

    .line 74
    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 75
    if-eqz v5, :cond_3

    .line 77
    const/4 v12, 0x5

    .line 79
    new-array v12, v12, [Ljava/lang/Object;

    .line 80
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v18

    .line 85
    const/16 v19, 0x0

    .line 86
    aput-object v18, v12, v19

    .line 88
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v18

    .line 93
    const/16 v20, 0x1

    .line 94
    aput-object v18, v12, v20

    .line 96
    if-eqz v8, :cond_2

    .line 98
    move/from16 v21, v3

    .line 100
    iget-object v3, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 102
    goto :goto_1

    .line 104
    :cond_2
    move/from16 v21, v3

    .line 105
    const/4 v3, 0x0

    .line 107
    :goto_1
    const/16 v18, 0x2

    .line 108
    aput-object v3, v12, v18

    .line 110
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v3

    .line 115
    const/16 v18, 0x3

    .line 116
    aput-object v3, v12, v18

    .line 118
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v3

    .line 123
    const/16 v18, 0x4

    .line 124
    aput-object v3, v12, v18

    .line 126
    const-string v3, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 128
    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object v3

    .line 133
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    goto :goto_2

    .line 137
    :cond_3
    move/from16 v21, v3

    .line 138
    const/16 v20, 0x1

    .line 140
    const/16 v19, 0x0

    .line 142
    :goto_2
    if-nez v8, :cond_6

    .line 144
    if-eqz v5, :cond_4

    .line 146
    const-string v3, "Skip the tag entry since tag number is not defined: "

    .line 148
    invoke-static {v3, v10, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    :cond_4
    move-object/from16 v22, v4

    .line 153
    move/from16 v18, v7

    .line 155
    :cond_5
    :goto_3
    move-object v4, v9

    .line 157
    move v7, v10

    .line 158
    goto/16 :goto_b

    .line 159
    :cond_6
    if-lez v11, :cond_16

    .line 161
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 163
    array-length v12, v3

    .line 165
    if-lt v11, v12, :cond_7

    .line 166
    goto/16 :goto_a

    .line 168
    :cond_7
    iget v12, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 170
    move/from16 v18, v7

    .line 172
    const/4 v7, 0x7

    .line 174
    if-eq v12, v7, :cond_10

    .line 175
    if-ne v11, v7, :cond_8

    .line 177
    goto :goto_4

    .line 179
    :cond_8
    if-eq v12, v11, :cond_10

    .line 180
    iget v7, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 182
    if-ne v7, v11, :cond_9

    .line 184
    goto :goto_4

    .line 186
    :cond_9
    move-object/from16 v22, v4

    .line 187
    const/4 v4, 0x4

    .line 189
    if-eq v12, v4, :cond_a

    .line 190
    if-ne v7, v4, :cond_b

    .line 192
    :cond_a
    const/4 v4, 0x3

    .line 194
    if-ne v11, v4, :cond_b

    .line 195
    goto :goto_5

    .line 197
    :cond_b
    const/16 v4, 0x9

    .line 198
    if-eq v12, v4, :cond_c

    .line 200
    if-ne v7, v4, :cond_d

    .line 202
    :cond_c
    const/16 v4, 0x8

    .line 204
    if-ne v11, v4, :cond_d

    .line 206
    goto :goto_5

    .line 208
    :cond_d
    const/16 v4, 0xc

    .line 209
    if-eq v12, v4, :cond_e

    .line 211
    if-ne v7, v4, :cond_f

    .line 213
    :cond_e
    const/16 v4, 0xb

    .line 215
    if-ne v11, v4, :cond_f

    .line 217
    goto :goto_5

    .line 219
    :cond_f
    move/from16 v4, v19

    .line 220
    goto :goto_6

    .line 222
    :cond_10
    :goto_4
    move-object/from16 v22, v4

    .line 223
    :goto_5
    move/from16 v4, v20

    .line 225
    :goto_6
    if-nez v4, :cond_11

    .line 227
    if-eqz v5, :cond_5

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    const-string v4, "Skip the tag entry since data format ("

    .line 233
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 238
    aget-object v4, v4, v11

    .line 240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v4, ") is unexpected for tag: "

    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v4, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 250
    invoke-static {v3, v4, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    goto :goto_3

    .line 255
    :cond_11
    const/4 v4, 0x7

    .line 256
    if-ne v11, v4, :cond_12

    .line 257
    move-object v4, v9

    .line 259
    move v7, v10

    .line 260
    move v11, v12

    .line 261
    goto :goto_7

    .line 262
    :cond_12
    move-object v4, v9

    .line 263
    move v7, v10

    .line 264
    :goto_7
    int-to-long v9, v15

    .line 265
    aget v3, v3, v11

    .line 266
    move/from16 v23, v11

    .line 268
    int-to-long v11, v3

    .line 270
    mul-long/2addr v9, v11

    .line 271
    const-wide/16 v11, 0x0

    .line 272
    cmp-long v3, v9, v11

    .line 274
    if-ltz v3, :cond_14

    .line 276
    const-wide/32 v11, 0x7fffffff

    .line 278
    cmp-long v3, v9, v11

    .line 281
    if-lez v3, :cond_13

    .line 283
    goto :goto_8

    .line 285
    :cond_13
    move/from16 v19, v20

    .line 286
    goto :goto_9

    .line 288
    :cond_14
    :goto_8
    if-eqz v5, :cond_15

    .line 289
    const-string v3, "Skip the tag entry since the number of components is invalid: "

    .line 291
    invoke-static {v3, v15, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    :cond_15
    :goto_9
    move/from16 v11, v23

    .line 296
    goto :goto_c

    .line 298
    :cond_16
    :goto_a
    move-object/from16 v22, v4

    .line 299
    move/from16 v18, v7

    .line 301
    move-object v4, v9

    .line 303
    move v7, v10

    .line 304
    if-eqz v5, :cond_17

    .line 305
    const-string v3, "Skip the tag entry since data format is invalid: "

    .line 307
    invoke-static {v3, v11, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    :cond_17
    :goto_b
    const-wide/16 v9, 0x0

    .line 312
    :goto_c
    if-nez v19, :cond_18

    .line 314
    invoke-virtual {v1, v13, v14}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 316
    move-object/from16 v24, v22

    .line 319
    goto/16 :goto_14

    .line 321
    :cond_18
    cmp-long v3, v9, v16

    .line 323
    const-string v12, "Compression"

    .line 325
    if-lez v3, :cond_1c

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 329
    move-result v3

    .line 332
    if-eqz v5, :cond_19

    .line 333
    move-wide/from16 v16, v13

    .line 335
    const-string/jumbo v13, "seek to data offset: "

    .line 337
    invoke-static {v13, v3, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    goto :goto_d

    .line 343
    :cond_19
    move-wide/from16 v16, v13

    .line 344
    :goto_d
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 346
    const/4 v14, 0x7

    .line 348
    if-ne v13, v14, :cond_1b

    .line 349
    iget-object v13, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 351
    const-string v14, "MakerNote"

    .line 353
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    move-result v13

    .line 358
    if-eqz v13, :cond_1a

    .line 359
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 361
    goto :goto_e

    .line 363
    :cond_1a
    const/4 v13, 0x6

    .line 364
    if-ne v2, v13, :cond_1b

    .line 365
    const-string v13, "ThumbnailImage"

    .line 367
    iget-object v14, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 369
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    move-result v13

    .line 374
    if-eqz v13, :cond_1b

    .line 375
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 377
    iput v15, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 379
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 381
    const/4 v14, 0x6

    .line 383
    invoke-static {v14, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 384
    move-result-object v13

    .line 387
    iget v14, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 388
    move/from16 v19, v15

    .line 390
    int-to-long v14, v14

    .line 392
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 393
    invoke-static {v14, v15, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 395
    move-result-object v2

    .line 398
    iget v14, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 399
    int-to-long v14, v14

    .line 401
    move-object/from16 v20, v8

    .line 402
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 404
    invoke-static {v14, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 406
    move-result-object v8

    .line 409
    const/4 v14, 0x4

    .line 410
    aget-object v15, v4, v14

    .line 411
    invoke-virtual {v15, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    aget-object v13, v4, v14

    .line 416
    const-string v15, "JPEGInterchangeFormat"

    .line 418
    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    aget-object v2, v4, v14

    .line 423
    const-string v13, "JPEGInterchangeFormatLength"

    .line 425
    invoke-virtual {v2, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    goto :goto_f

    .line 430
    :cond_1b
    :goto_e
    move-object/from16 v20, v8

    .line 431
    move/from16 v19, v15

    .line 433
    :goto_f
    int-to-long v2, v3

    .line 435
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 436
    goto :goto_10

    .line 439
    :cond_1c
    move-object/from16 v20, v8

    .line 440
    move-wide/from16 v16, v13

    .line 442
    move/from16 v19, v15

    .line 444
    :goto_10
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 446
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    move-result-object v3

    .line 451
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    move-result-object v2

    .line 455
    check-cast v2, Ljava/lang/Integer;

    .line 456
    if-eqz v5, :cond_1d

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    .line 460
    const-string v7, "nextIfdType: "

    .line 462
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 467
    const-string v7, " byteCount: "

    .line 470
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    move-result-object v3

    .line 481
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_1d
    if-eqz v2, :cond_28

    .line 485
    const/4 v3, 0x3

    .line 487
    if-eq v11, v3, :cond_21

    .line 488
    const/4 v3, 0x4

    .line 490
    if-eq v11, v3, :cond_20

    .line 491
    const/16 v3, 0x8

    .line 493
    if-eq v11, v3, :cond_1f

    .line 495
    const/16 v3, 0x9

    .line 497
    if-eq v11, v3, :cond_1e

    .line 499
    const/16 v3, 0xd

    .line 501
    if-eq v11, v3, :cond_1e

    .line 503
    const-wide/16 v3, -0x1

    .line 505
    goto :goto_12

    .line 507
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 508
    move-result v3

    .line 511
    goto :goto_11

    .line 512
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 513
    move-result v3

    .line 516
    goto :goto_11

    .line 517
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 518
    move-result v3

    .line 521
    int-to-long v3, v3

    .line 522
    const-wide v7, 0xffffffffL

    .line 523
    and-long/2addr v3, v7

    .line 528
    goto :goto_12

    .line 529
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 530
    move-result v3

    .line 533
    :goto_11
    int-to-long v3, v3

    .line 534
    :goto_12
    if-eqz v5, :cond_22

    .line 535
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 537
    move-result-object v7

    .line 540
    move-object/from16 v8, v20

    .line 541
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 543
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 545
    move-result-object v7

    .line 548
    const-string v8, "Offset: %d, tagName: %s"

    .line 549
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 551
    move-result-object v7

    .line 554
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_22
    const-wide/16 v7, 0x0

    .line 558
    cmp-long v7, v3, v7

    .line 560
    const-string v8, ")"

    .line 562
    const/4 v9, -0x1

    .line 564
    if-lez v7, :cond_25

    .line 565
    iget v7, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 567
    if-eq v7, v9, :cond_23

    .line 569
    int-to-long v10, v7

    .line 571
    cmp-long v7, v3, v10

    .line 572
    if-gez v7, :cond_25

    .line 574
    :cond_23
    long-to-int v7, v3

    .line 576
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 577
    move-result-object v7

    .line 580
    move-object/from16 v15, v22

    .line 581
    invoke-interface {v15, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 583
    move-result v7

    .line 586
    if-nez v7, :cond_24

    .line 587
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 589
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 592
    move-result v2

    .line 595
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 596
    goto :goto_13

    .line 599
    :cond_24
    if-eqz v5, :cond_27

    .line 600
    new-instance v7, Ljava/lang/StringBuilder;

    .line 602
    const-string v9, "Skip jump into the IFD since it has already been read: IfdType "

    .line 604
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 609
    const-string v2, " (at "

    .line 612
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {v7, v8, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    goto :goto_13

    .line 623
    :cond_25
    move-object/from16 v15, v22

    .line 624
    if-eqz v5, :cond_27

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    .line 628
    const-string v7, "Skip jump into the IFD since its offset is invalid: "

    .line 630
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    move-result-object v2

    .line 641
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 642
    if-eq v3, v9, :cond_26

    .line 644
    const-string v3, " (total length: "

    .line 646
    invoke-static {v2, v3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    move-result-object v2

    .line 651
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 652
    invoke-static {v2, v3, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 654
    move-result-object v2

    .line 657
    :cond_26
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_27
    :goto_13
    move-wide/from16 v2, v16

    .line 661
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 663
    move-object/from16 v24, v15

    .line 666
    goto/16 :goto_14

    .line 668
    :cond_28
    move-wide/from16 v2, v16

    .line 670
    move-object/from16 v8, v20

    .line 672
    move-object/from16 v15, v22

    .line 674
    iget v7, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 676
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 678
    add-int/2addr v7, v13

    .line 680
    long-to-int v9, v9

    .line 681
    new-array v9, v9, [B

    .line 682
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 684
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 687
    int-to-long v13, v7

    .line 689
    move-object v7, v12

    .line 690
    move-object v12, v10

    .line 691
    move-object/from16 v24, v15

    .line 692
    move/from16 v17, v19

    .line 694
    move-object v15, v9

    .line 696
    move/from16 v16, v11

    .line 697
    invoke-direct/range {v12 .. v17}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 699
    aget-object v4, v4, p2

    .line 702
    iget-object v9, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 704
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v4, "DNGVersion"

    .line 709
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 711
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    move-result v4

    .line 716
    if-eqz v4, :cond_29

    .line 717
    const/4 v4, 0x3

    .line 719
    iput v4, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 720
    :cond_29
    const-string v4, "Make"

    .line 722
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    move-result v4

    .line 727
    if-nez v4, :cond_2a

    .line 728
    const-string v4, "Model"

    .line 730
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    move-result v4

    .line 735
    if-eqz v4, :cond_2b

    .line 736
    :cond_2a
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 738
    invoke-virtual {v10, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 740
    move-result-object v4

    .line 743
    const-string v9, "PENTAX"

    .line 744
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 746
    move-result v4

    .line 749
    if-nez v4, :cond_2c

    .line 750
    :cond_2b
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 752
    move-result v4

    .line 755
    if-eqz v4, :cond_2d

    .line 756
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 758
    invoke-virtual {v10, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 760
    move-result v4

    .line 763
    const v7, 0xffff

    .line 764
    if-ne v4, v7, :cond_2d

    .line 767
    :cond_2c
    const/16 v4, 0x8

    .line 769
    iput v4, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 771
    :cond_2d
    iget v4, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 773
    int-to-long v7, v4

    .line 775
    cmp-long v4, v7, v2

    .line 776
    if-eqz v4, :cond_2e

    .line 778
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 780
    :cond_2e
    :goto_14
    add-int/lit8 v7, v18, 0x1

    .line 783
    int-to-short v7, v7

    .line 785
    move/from16 v2, p2

    .line 786
    move/from16 v3, v21

    .line 788
    move-object/from16 v4, v24

    .line 790
    goto/16 :goto_0

    .line 792
    :cond_2f
    move-object/from16 v24, v4

    .line 794
    move-object v4, v9

    .line 796
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 797
    move-result v2

    .line 800
    if-eqz v5, :cond_30

    .line 801
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 803
    move-result-object v3

    .line 806
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 807
    move-result-object v3

    .line 810
    const-string v7, "nextIfdOffset: %d"

    .line 811
    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 813
    move-result-object v3

    .line 816
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_30
    int-to-long v7, v2

    .line 820
    const-wide/16 v9, 0x0

    .line 821
    cmp-long v3, v7, v9

    .line 823
    if-lez v3, :cond_33

    .line 825
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 827
    move-result-object v3

    .line 830
    move-object/from16 v9, v24

    .line 831
    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 833
    move-result v3

    .line 836
    if-nez v3, :cond_32

    .line 837
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 839
    const/4 v2, 0x4

    .line 842
    aget-object v3, v4, v2

    .line 843
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 845
    move-result v3

    .line 848
    if-eqz v3, :cond_31

    .line 849
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 851
    goto :goto_15

    .line 854
    :cond_31
    const/4 v2, 0x5

    .line 855
    aget-object v3, v4, v2

    .line 856
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 858
    move-result v3

    .line 861
    if-eqz v3, :cond_34

    .line 862
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 864
    goto :goto_15

    .line 867
    :cond_32
    if-eqz v5, :cond_34

    .line 868
    const-string v0, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 870
    invoke-static {v0, v2, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 872
    goto :goto_15

    .line 875
    :cond_33
    if-eqz v5, :cond_34

    .line 876
    const-string v0, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 878
    invoke-static {v0, v2, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 880
    :cond_34
    :goto_15
    return-void
    .line 883
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 8
    aget-object v1, v1, v0

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    return-void
    .line 18
.end method

.method public final replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    aget-object v0, p0, p3

    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    aget-object v0, p0, p3

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    aget-object v0, p0, p3

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 26
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    aget-object p0, p0, p3

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-void
    .line 36
.end method

.method public final saveAttributes()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-string v1, "Failed to save new file. Original file is stored in "

    .line 4
    iget v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 6
    const/16 v4, 0xe

    .line 8
    const/16 v5, 0xd

    .line 10
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x4

    .line 13
    if-eq v2, v7, :cond_1

    .line 14
    if-eq v2, v5, :cond_1

    .line 16
    if-ne v2, v4, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v2, v6

    .line 23
    :goto_1
    if-eqz v2, :cond_b

    .line 24
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 26
    if-eqz v2, :cond_a

    .line 28
    iget-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 30
    if-eqz v8, :cond_3

    .line 32
    iget-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 34
    if-eqz v8, :cond_3

    .line 36
    iget-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 38
    if-eqz v8, :cond_2

    .line 40
    goto :goto_2

    .line 42
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 43
    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    .line 45
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0

    .line 50
    :cond_3
    :goto_2
    iget v8, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 51
    const/4 v9, 0x6

    .line 53
    const/4 v10, 0x0

    .line 54
    if-eq v8, v9, :cond_5

    .line 55
    const/4 v9, 0x7

    .line 57
    if-ne v8, v9, :cond_4

    .line 58
    goto :goto_3

    .line 60
    :cond_4
    move-object v8, v10

    .line 61
    goto :goto_4

    .line 62
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    .line 63
    move-result-object v8

    .line 66
    :goto_4
    iput-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 67
    :try_start_0
    const-string/jumbo v8, "temp"

    .line 69
    const-string/jumbo v9, "tmp"

    .line 72
    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 75
    move-result-object v8

    .line 78
    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    .line 79
    const-wide/16 v11, 0x0

    .line 81
    invoke-static {v2, v11, v12, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 83
    new-instance v9, Ljava/io/FileInputStream;

    .line 86
    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 88
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    .line 91
    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 93
    :try_start_2
    invoke-static {v9, v13}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 96
    invoke-static {v9}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 99
    invoke-static {v13}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 102
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    .line 105
    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    :try_start_4
    sget v13, Landroid/system/OsConstants;->SEEK_SET:I

    .line 110
    invoke-static {v2, v11, v12, v13}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 112
    new-instance v13, Ljava/io/FileOutputStream;

    .line 115
    invoke-direct {v13, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    :try_start_5
    new-instance v14, Ljava/io/BufferedInputStream;

    .line 120
    invoke-direct {v14, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    :try_start_6
    new-instance v15, Ljava/io/BufferedOutputStream;

    .line 125
    invoke-direct {v15, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    :try_start_7
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 130
    if-ne v3, v7, :cond_6

    .line 132
    invoke-virtual {v0, v14, v15}, Landroidx/exifinterface/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 134
    goto :goto_5

    .line 137
    :cond_6
    if-ne v3, v5, :cond_7

    .line 138
    invoke-virtual {v0, v14, v15}, Landroidx/exifinterface/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 140
    goto :goto_5

    .line 143
    :cond_7
    if-ne v3, v4, :cond_8

    .line 144
    invoke-virtual {v0, v14, v15}, Landroidx/exifinterface/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 146
    :cond_8
    :goto_5
    invoke-static {v14}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v15}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 155
    iput-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 158
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    goto :goto_8

    .line 162
    :catchall_0
    move-exception v0

    .line 163
    move-object v15, v10

    .line 164
    :goto_6
    move-object v10, v14

    .line 165
    goto :goto_a

    .line 166
    :catch_1
    move-exception v0

    .line 167
    move-object v15, v10

    .line 168
    goto :goto_8

    .line 169
    :catch_2
    move-exception v0

    .line 170
    goto :goto_7

    .line 171
    :catch_3
    move-exception v0

    .line 172
    move-object v13, v10

    .line 173
    :goto_7
    move-object v14, v10

    .line 174
    move-object v15, v14

    .line 175
    :goto_8
    move-object v10, v13

    .line 176
    move-object v3, v10

    .line 177
    move-object v10, v9

    .line 178
    goto :goto_9

    .line 179
    :catchall_1
    move-exception v0

    .line 180
    move-object v15, v10

    .line 181
    goto :goto_a

    .line 182
    :catch_4
    move-exception v0

    .line 183
    move-object v3, v10

    .line 184
    move-object v14, v3

    .line 185
    move-object v15, v14

    .line 186
    :goto_9
    :try_start_8
    new-instance v4, Ljava/io/FileInputStream;

    .line 187
    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 189
    :try_start_9
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    .line 192
    invoke-static {v2, v11, v12, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 194
    new-instance v5, Ljava/io/FileOutputStream;

    .line 197
    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 199
    :try_start_a
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 202
    :try_start_b
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v5}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    new-instance v1, Ljava/io/IOException;

    .line 211
    const-string v2, "Failed to save new file"

    .line 213
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 218
    :catchall_2
    move-exception v0

    .line 219
    goto :goto_6

    .line 220
    :goto_a
    move-object v14, v10

    .line 221
    const/4 v3, 0x0

    .line 222
    goto :goto_e

    .line 223
    :catchall_3
    move-exception v0

    .line 224
    move-object v10, v4

    .line 225
    move-object v3, v5

    .line 226
    goto :goto_b

    .line 227
    :catch_5
    move-exception v0

    .line 228
    move-object v10, v4

    .line 229
    move-object v3, v5

    .line 230
    goto :goto_c

    .line 231
    :catchall_4
    move-exception v0

    .line 232
    move-object v10, v4

    .line 233
    goto :goto_b

    .line 234
    :catch_6
    move-exception v0

    .line 235
    move-object v10, v4

    .line 236
    goto :goto_c

    .line 237
    :catchall_5
    move-exception v0

    .line 238
    :goto_b
    const/16 v16, 0x0

    .line 239
    goto :goto_d

    .line 241
    :catch_7
    move-exception v0

    .line 242
    :goto_c
    :try_start_c
    new-instance v2, Ljava/io/IOException;

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 250
    move-result-object v1

    .line 253
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v1

    .line 260
    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 264
    :catchall_6
    move-exception v0

    .line 265
    move/from16 v16, v6

    .line 266
    :goto_d
    :try_start_d
    invoke-static {v10}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 271
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 274
    :catchall_7
    move-exception v0

    .line 275
    move/from16 v3, v16

    .line 276
    :goto_e
    invoke-static {v14}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    invoke-static {v15}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 281
    if-nez v3, :cond_9

    .line 284
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 286
    :cond_9
    throw v0

    .line 289
    :catchall_8
    move-exception v0

    .line 290
    move-object v10, v13

    .line 291
    goto :goto_f

    .line 292
    :catch_8
    move-exception v0

    .line 293
    move-object v10, v13

    .line 294
    goto :goto_10

    .line 295
    :catchall_9
    move-exception v0

    .line 296
    :goto_f
    move-object v1, v10

    .line 297
    move-object v10, v9

    .line 298
    goto :goto_12

    .line 299
    :catch_9
    move-exception v0

    .line 300
    :goto_10
    move-object v1, v10

    .line 301
    move-object v10, v9

    .line 302
    goto :goto_11

    .line 303
    :catchall_a
    move-exception v0

    .line 304
    move-object v1, v10

    .line 305
    goto :goto_12

    .line 306
    :catch_a
    move-exception v0

    .line 307
    move-object v1, v10

    .line 308
    :goto_11
    :try_start_e
    new-instance v2, Ljava/io/IOException;

    .line 309
    const-string v3, "Failed to copy original file to temp file"

    .line 311
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 316
    :catchall_b
    move-exception v0

    .line 317
    :goto_12
    invoke-static {v10}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 318
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 321
    throw v0

    .line 324
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 325
    const-string v1, "ExifInterface does not support saving attributes for the current input."

    .line 327
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 329
    throw v0

    .line 332
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 333
    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, and WebP formats."

    .line 335
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 337
    throw v0
    .line 340
.end method

.method public final saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 10

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "saveJpegAttributes starting with (inputStream: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", outputStream: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ")"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    const-string v1, "ExifInterface"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 39
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 44
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 48
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 51
    move-result p2

    .line 54
    const-string v1, "Invalid marker"

    .line 55
    const/4 v2, -0x1

    .line 57
    if-ne p2, v2, :cond_c

    .line 58
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 60
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 63
    move-result p2

    .line 66
    const/16 v3, -0x28

    .line 67
    if-ne p2, v3, :cond_b

    .line 69
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 71
    const-string p2, "Xmp"

    .line 74
    invoke-virtual {p0, p2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 79
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 80
    const/4 v5, 0x0

    .line 82
    if-eqz v3, :cond_1

    .line 83
    iget-boolean v3, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    .line 85
    if-eqz v3, :cond_1

    .line 87
    aget-object v3, v4, v5

    .line 89
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 94
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 95
    goto :goto_0

    .line 97
    :cond_1
    const/4 v3, 0x0

    .line 98
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 99
    const/16 v6, -0x1f

    .line 102
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 104
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 107
    if-eqz v3, :cond_2

    .line 110
    aget-object p0, v4, v5

    .line 112
    invoke-virtual {p0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_2
    const/16 p0, 0x1000

    .line 117
    new-array p2, p0, [B

    .line 119
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 121
    move-result v3

    .line 124
    if-ne v3, v2, :cond_a

    .line 125
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 127
    move-result v3

    .line 130
    const/16 v4, -0x27

    .line 131
    if-eq v3, v4, :cond_9

    .line 133
    const/16 v4, -0x26

    .line 135
    if-eq v3, v4, :cond_9

    .line 137
    const-string v4, "Invalid length"

    .line 139
    if-eq v3, v6, :cond_5

    .line 141
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 143
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 146
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 149
    move-result v3

    .line 152
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 153
    add-int/lit8 v3, v3, -0x2

    .line 156
    if-ltz v3, :cond_4

    .line 158
    :goto_2
    if-lez v3, :cond_3

    .line 160
    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    .line 162
    move-result v4

    .line 165
    invoke-virtual {v0, p2, v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    .line 166
    move-result v4

    .line 169
    if-ltz v4, :cond_3

    .line 170
    invoke-virtual {p1, p2, v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 172
    sub-int/2addr v3, v4

    .line 175
    goto :goto_2

    .line 176
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 177
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    throw p0

    .line 182
    :cond_5
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 183
    move-result v7

    .line 186
    add-int/lit8 v7, v7, -0x2

    .line 187
    if-ltz v7, :cond_8

    .line 189
    const/4 v4, 0x6

    .line 191
    new-array v8, v4, [B

    .line 192
    if-lt v7, v4, :cond_6

    .line 194
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 196
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 199
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 201
    move-result v9

    .line 204
    if-eqz v9, :cond_6

    .line 205
    add-int/lit8 v7, v7, -0x6

    .line 207
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 209
    goto :goto_1

    .line 212
    :cond_6
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 213
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 216
    add-int/lit8 v3, v7, 0x2

    .line 219
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 221
    if-lt v7, v4, :cond_7

    .line 224
    add-int/lit8 v7, v7, -0x6

    .line 226
    invoke-virtual {p1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 228
    :cond_7
    :goto_3
    if-lez v7, :cond_3

    .line 231
    invoke-static {v7, p0}, Ljava/lang/Math;->min(II)I

    .line 233
    move-result v3

    .line 236
    invoke-virtual {v0, p2, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    .line 237
    move-result v3

    .line 240
    if-ltz v3, :cond_3

    .line 241
    invoke-virtual {p1, p2, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 243
    sub-int/2addr v7, v3

    .line 246
    goto :goto_3

    .line 247
    :cond_8
    new-instance p0, Ljava/io/IOException;

    .line 248
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 250
    throw p0

    .line 253
    :cond_9
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 254
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 257
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 260
    return-void

    .line 263
    :cond_a
    new-instance p0, Ljava/io/IOException;

    .line 264
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 266
    throw p0

    .line 269
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .line 270
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 272
    throw p0

    .line 275
    :cond_c
    new-instance p0, Ljava/io/IOException;

    .line 276
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    throw p0
    .line 281
.end method

.method public final savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "savePngAttributes starting with (inputStream: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", outputStream: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ")"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    const-string v1, "ExifInterface"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 39
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 44
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 48
    sget-object p2, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 51
    array-length v2, p2

    .line 53
    invoke-static {v0, p1, v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 54
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 57
    const/4 v3, 0x4

    .line 59
    if-nez v2, :cond_1

    .line 60
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 62
    move-result p2

    .line 65
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 66
    add-int/2addr p2, v3

    .line 69
    add-int/2addr p2, v3

    .line 70
    invoke-static {v0, p1, p2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    array-length p2, p2

    .line 75
    sub-int/2addr v2, p2

    .line 76
    sub-int/2addr v2, v3

    .line 77
    sub-int/2addr v2, v3

    .line 78
    invoke-static {v0, p1, v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 79
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 82
    move-result p2

    .line 85
    add-int/2addr p2, v3

    .line 86
    add-int/2addr p2, v3

    .line 87
    invoke-virtual {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 88
    :goto_0
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 91
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 96
    invoke-direct {v2, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 98
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 101
    iget-object p0, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 104
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    .line 106
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 108
    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 112
    new-instance v1, Ljava/util/zip/CRC32;

    .line 115
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 117
    array-length v2, p0

    .line 120
    sub-int/2addr v2, v3

    .line 121
    invoke-virtual {v1, p0, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 122
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 125
    move-result-wide v1

    .line 128
    long-to-int p0, v1

    .line 129
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-static {p2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 136
    return-void

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    goto :goto_1

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    const/4 p2, 0x0

    .line 143
    :goto_1
    invoke-static {p2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    throw p0
    .line 147
.end method

.method public final saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 8
    if-eqz v3, :cond_0

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v4, "saveWebpAttributes starting with (inputStream: "

    .line 14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v4, ", outputStream: "

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v4, ")"

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 39
    const-string v4, "ExifInterface"

    .line 40
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 45
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 47
    invoke-direct {v3, v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 49
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 52
    invoke-direct {v1, v2, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 54
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 57
    array-length v5, v2

    .line 59
    invoke-static {v3, v1, v5}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 60
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 63
    array-length v6, v5

    .line 65
    const/4 v7, 0x4

    .line 66
    add-int/2addr v6, v7

    .line 67
    invoke-virtual {v3, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 68
    const/4 v6, 0x0

    .line 71
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 72
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 77
    invoke-direct {v6, v8, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 79
    iget v4, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 82
    if-eqz v4, :cond_2

    .line 84
    array-length v2, v2

    .line 86
    add-int/2addr v2, v7

    .line 87
    array-length v9, v5

    .line 88
    add-int/2addr v2, v9

    .line 89
    sub-int/2addr v4, v2

    .line 90
    sub-int/2addr v4, v7

    .line 91
    sub-int/2addr v4, v7

    .line 92
    invoke-static {v3, v6, v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 93
    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 96
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 99
    move-result v2

    .line 102
    rem-int/lit8 v4, v2, 0x2

    .line 103
    if-eqz v4, :cond_1

    .line 105
    add-int/lit8 v2, v2, 0x1

    .line 107
    :cond_1
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 109
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 112
    goto/16 :goto_4

    .line 115
    :catchall_0
    move-exception v0

    .line 117
    goto/16 :goto_e

    .line 118
    :cond_2
    new-array v2, v7, [B

    .line 120
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 122
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 125
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 127
    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/16 v10, 0x8

    .line 131
    const/4 v11, 0x0

    .line 133
    const/4 v12, 0x1

    .line 134
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 135
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 137
    if-eqz v9, :cond_c

    .line 139
    :try_start_2
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 141
    move-result v2

    .line 144
    rem-int/lit8 v9, v2, 0x2

    .line 145
    if-ne v9, v12, :cond_3

    .line 147
    add-int/lit8 v9, v2, 0x1

    .line 149
    goto :goto_0

    .line 151
    :cond_3
    move v9, v2

    .line 152
    :goto_0
    new-array v9, v9, [B

    .line 153
    invoke-virtual {v3, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 155
    aget-byte v15, v9, v11

    .line 158
    or-int/2addr v10, v15

    .line 160
    int-to-byte v10, v10

    .line 161
    aput-byte v10, v9, v11

    .line 162
    shr-int/2addr v10, v12

    .line 164
    and-int/2addr v10, v12

    .line 165
    if-ne v10, v12, :cond_4

    .line 166
    move v11, v12

    .line 168
    :cond_4
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 169
    invoke-virtual {v6, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 172
    invoke-virtual {v6, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 175
    if-eqz v11, :cond_9

    .line 178
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 180
    :goto_1
    new-array v4, v7, [B

    .line 182
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 184
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 187
    move-result v9

    .line 190
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 191
    invoke-virtual {v6, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 194
    rem-int/lit8 v10, v9, 0x2

    .line 197
    if-ne v10, v12, :cond_5

    .line 199
    add-int/lit8 v9, v9, 0x1

    .line 201
    :cond_5
    invoke-static {v3, v6, v9}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 203
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 206
    move-result v4

    .line 209
    if-nez v4, :cond_6

    .line 210
    goto :goto_1

    .line 212
    :cond_6
    :goto_2
    new-array v2, v7, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :try_start_3
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 215
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 218
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 220
    move-result v4
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    xor-int/2addr v4, v12

    .line 224
    goto :goto_3

    .line 225
    :catch_0
    move v4, v12

    .line 226
    :goto_3
    if-eqz v4, :cond_7

    .line 227
    :try_start_4
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 229
    goto :goto_4

    .line 232
    :cond_7
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 233
    move-result v4

    .line 236
    invoke-virtual {v6, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 237
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 240
    rem-int/lit8 v2, v4, 0x2

    .line 243
    if-ne v2, v12, :cond_8

    .line 245
    add-int/lit8 v4, v4, 0x1

    .line 247
    :cond_8
    invoke-static {v3, v6, v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 249
    goto :goto_2

    .line 252
    :cond_9
    new-array v2, v7, [B

    .line 253
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 255
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 258
    move-result v4

    .line 261
    invoke-virtual {v6, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 262
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 265
    rem-int/lit8 v9, v4, 0x2

    .line 268
    if-ne v9, v12, :cond_a

    .line 270
    add-int/lit8 v4, v4, 0x1

    .line 272
    :cond_a
    invoke-static {v3, v6, v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 274
    invoke-static {v2, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 277
    move-result v4

    .line 280
    if-nez v4, :cond_b

    .line 281
    if-eqz v14, :cond_9

    .line 283
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 285
    move-result v2

    .line 288
    if-eqz v2, :cond_9

    .line 289
    :cond_b
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 291
    goto :goto_4

    .line 294
    :cond_c
    invoke-static {v2, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 295
    move-result v9

    .line 298
    if-nez v9, :cond_e

    .line 299
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 301
    move-result v9

    .line 304
    if-eqz v9, :cond_d

    .line 305
    goto :goto_5

    .line 307
    :cond_d
    :goto_4
    move-object/from16 v20, v1

    .line 308
    move-object/from16 v21, v5

    .line 310
    goto/16 :goto_b

    .line 312
    :cond_e
    :goto_5
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 314
    move-result v9

    .line 317
    rem-int/lit8 v15, v9, 0x2

    .line 318
    if-ne v15, v12, :cond_f

    .line 320
    add-int/lit8 v15, v9, 0x1

    .line 322
    goto :goto_6

    .line 324
    :cond_f
    move v15, v9

    .line 325
    :goto_6
    const/4 v7, 0x3

    .line 326
    new-array v10, v7, [B

    .line 327
    invoke-static {v2, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 329
    move-result v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    const/16 v11, 0x2f

    .line 333
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 335
    if-eqz v16, :cond_11

    .line 337
    :try_start_5
    invoke-virtual {v3, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 339
    new-array v7, v7, [B

    .line 342
    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 344
    invoke-static {v12, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 347
    move-result v7

    .line 350
    if-eqz v7, :cond_10

    .line 351
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 353
    move-result v7

    .line 356
    shl-int/lit8 v16, v7, 0x12

    .line 357
    shr-int/lit8 v16, v16, 0x12

    .line 359
    shl-int/lit8 v18, v7, 0x2

    .line 361
    shr-int/lit8 v18, v18, 0x12

    .line 363
    add-int/lit8 v15, v15, -0xa

    .line 365
    move/from16 v11, v16

    .line 367
    move/from16 v19, v18

    .line 369
    const/16 v18, 0x0

    .line 371
    goto :goto_8

    .line 373
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 374
    const-string v1, "Error checking VP8 signature"

    .line 376
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 378
    throw v0

    .line 381
    :cond_11
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 382
    move-result v7

    .line 385
    if-eqz v7, :cond_14

    .line 386
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 388
    move-result v7

    .line 391
    if-ne v7, v11, :cond_13

    .line 392
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 394
    move-result v7

    .line 397
    and-int/lit16 v11, v7, 0x3fff

    .line 398
    const/16 v18, 0x1

    .line 400
    add-int/lit8 v11, v11, 0x1

    .line 402
    const v19, 0xfffc000

    .line 404
    and-int v19, v7, v19

    .line 407
    ushr-int/lit8 v19, v19, 0xe

    .line 409
    add-int/lit8 v19, v19, 0x1

    .line 411
    const/high16 v20, 0x10000000

    .line 413
    and-int v20, v7, v20

    .line 415
    if-eqz v20, :cond_12

    .line 417
    goto :goto_7

    .line 419
    :cond_12
    const/16 v18, 0x0

    .line 420
    :goto_7
    add-int/lit8 v15, v15, -0x5

    .line 422
    goto :goto_8

    .line 424
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 425
    const-string v1, "Error checking VP8L signature"

    .line 427
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 429
    throw v0

    .line 432
    :cond_14
    const/4 v7, 0x0

    .line 433
    const/4 v11, 0x0

    .line 434
    const/16 v18, 0x0

    .line 435
    const/16 v19, 0x0

    .line 437
    :goto_8
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 439
    const/16 v4, 0xa

    .line 442
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 444
    new-array v4, v4, [B

    .line 447
    if-eqz v18, :cond_15

    .line 449
    const/16 v17, 0x0

    .line 451
    aget-byte v18, v4, v17

    .line 453
    move-object/from16 v20, v1

    .line 455
    or-int/lit8 v1, v18, 0x10

    .line 457
    int-to-byte v1, v1

    .line 459
    aput-byte v1, v4, v17

    .line 460
    goto :goto_9

    .line 462
    :cond_15
    move-object/from16 v20, v1

    .line 463
    :goto_9
    const/4 v1, 0x0

    .line 465
    aget-byte v17, v4, v1

    .line 466
    move-object/from16 v21, v5

    .line 468
    const/16 v18, 0x8

    .line 470
    or-int/lit8 v5, v17, 0x8

    .line 472
    int-to-byte v5, v5

    .line 474
    aput-byte v5, v4, v1

    .line 475
    add-int/lit8 v11, v11, -0x1

    .line 477
    add-int/lit8 v1, v19, -0x1

    .line 479
    int-to-byte v5, v11

    .line 481
    const/16 v17, 0x4

    .line 482
    aput-byte v5, v4, v17

    .line 484
    shr-int/lit8 v5, v11, 0x8

    .line 486
    int-to-byte v5, v5

    .line 488
    const/16 v17, 0x5

    .line 489
    aput-byte v5, v4, v17

    .line 491
    shr-int/lit8 v5, v11, 0x10

    .line 493
    int-to-byte v5, v5

    .line 495
    const/4 v11, 0x6

    .line 496
    aput-byte v5, v4, v11

    .line 497
    const/4 v5, 0x7

    .line 499
    int-to-byte v11, v1

    .line 500
    aput-byte v11, v4, v5

    .line 501
    shr-int/lit8 v5, v1, 0x8

    .line 503
    int-to-byte v5, v5

    .line 505
    const/16 v11, 0x8

    .line 506
    aput-byte v5, v4, v11

    .line 508
    shr-int/lit8 v1, v1, 0x10

    .line 510
    int-to-byte v1, v1

    .line 512
    const/16 v5, 0x9

    .line 513
    aput-byte v1, v4, v5

    .line 515
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 517
    invoke-virtual {v6, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 520
    invoke-virtual {v6, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 523
    invoke-static {v2, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 526
    move-result v1

    .line 529
    if-eqz v1, :cond_16

    .line 530
    invoke-virtual {v6, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 532
    invoke-virtual {v6, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 535
    invoke-virtual {v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 538
    goto :goto_a

    .line 541
    :cond_16
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 542
    move-result v1

    .line 545
    if-eqz v1, :cond_17

    .line 546
    const/16 v1, 0x2f

    .line 548
    invoke-virtual {v6, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 550
    invoke-virtual {v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 553
    :cond_17
    :goto_a
    invoke-static {v3, v6, v15}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 556
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 559
    :goto_b
    invoke-static {v3, v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 562
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 565
    move-result v0

    .line 568
    move-object/from16 v1, v21

    .line 569
    array-length v2, v1

    .line 571
    add-int/2addr v0, v2

    .line 572
    move-object/from16 v2, v20

    .line 573
    invoke-virtual {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 575
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 578
    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 581
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 584
    return-void

    .line 587
    :catch_1
    move-exception v0

    .line 588
    move-object v6, v8

    .line 589
    goto :goto_c

    .line 590
    :catchall_1
    move-exception v0

    .line 591
    goto :goto_d

    .line 592
    :catch_2
    move-exception v0

    .line 593
    :goto_c
    :try_start_6
    new-instance v1, Ljava/io/IOException;

    .line 594
    const-string v2, "Failed to save WebP file"

    .line 596
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 601
    :goto_d
    move-object v8, v6

    .line 602
    :goto_e
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 603
    throw v0
    .line 606
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    const-string v3, "DateTime"

    .line 8
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v3

    .line 13
    const-string v4, " : "

    .line 14
    const-string v5, "Invalid value for "

    .line 16
    const-string v6, "ExifInterface"

    .line 18
    if-nez v3, :cond_0

    .line 20
    const-string v3, "DateTimeOriginal"

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    const-string v3, "DateTimeDigitized"

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    :cond_0
    if-eqz v2, :cond_3

    .line 38
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 46
    move-result v3

    .line 49
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 52
    move-result-object v7

    .line 55
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 56
    move-result v7

    .line 59
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 60
    move-result v8

    .line 63
    const/16 v9, 0x13

    .line 64
    if-ne v8, v9, :cond_2

    .line 66
    if-nez v3, :cond_1

    .line 68
    if-nez v7, :cond_1

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    if-eqz v7, :cond_3

    .line 73
    const-string v3, "-"

    .line 75
    const-string v7, ":"

    .line 77
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 101
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 105
    :cond_3
    :goto_1
    const-string v3, "ISOSpeedRatings"

    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v3

    .line 111
    sget-boolean v7, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 112
    if-eqz v3, :cond_5

    .line 114
    if-eqz v7, :cond_4

    .line 116
    const-string/jumbo v1, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 118
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_4
    const-string v1, "PhotographicSensitivity"

    .line 124
    :cond_5
    const/4 v3, 0x2

    .line 126
    const/4 v8, 0x1

    .line 127
    const-string v9, "/"

    .line 128
    if-eqz v2, :cond_8

    .line 130
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 132
    invoke-virtual {v10, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 134
    move-result v10

    .line 137
    if-eqz v10, :cond_8

    .line 138
    const-string v10, "GPSTimeStamp"

    .line 140
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v10

    .line 145
    if-eqz v10, :cond_7

    .line 146
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 148
    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 150
    move-result-object v10

    .line 153
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    .line 154
    move-result v11

    .line 157
    if-nez v11, :cond_6

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 177
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 181
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 191
    move-result v4

    .line 194
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v4, "/1,"

    .line 198
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 203
    move-result-object v5

    .line 206
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 207
    move-result v5

    .line 210
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/4 v4, 0x3

    .line 217
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 218
    move-result-object v4

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 222
    move-result v4

    .line 225
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    const-string v4, "/1"

    .line 229
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object v2

    .line 237
    goto :goto_2

    .line 238
    :cond_7
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 239
    move-result-wide v10

    .line 242
    const-wide v12, 0x40c3880000000000L    # 10000.0

    .line 243
    mul-double/2addr v10, v12

    .line 248
    double-to-long v10, v10

    .line 249
    new-instance v12, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-wide/16 v10, 0x2710

    .line 261
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_2

    .line 270
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v0

    .line 288
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 292
    :cond_8
    :goto_2
    const/4 v4, 0x0

    .line 293
    move v5, v4

    .line 294
    :goto_3
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 295
    array-length v10, v10

    .line 297
    if-ge v4, v10, :cond_1f

    .line 298
    const/4 v10, 0x4

    .line 300
    if-ne v4, v10, :cond_9

    .line 301
    iget-boolean v10, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 303
    if-nez v10, :cond_9

    .line 305
    goto/16 :goto_14

    .line 307
    :cond_9
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 309
    aget-object v10, v10, v4

    .line 311
    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    move-result-object v10

    .line 316
    check-cast v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 317
    if-eqz v10, :cond_1e

    .line 319
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 321
    if-nez v2, :cond_a

    .line 323
    aget-object v3, v11, v4

    .line 325
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    goto/16 :goto_14

    .line 330
    :cond_a
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    .line 332
    move-result-object v12

    .line 335
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 336
    check-cast v13, Ljava/lang/Integer;

    .line 338
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 340
    move-result v13

    .line 343
    const/4 v14, -0x1

    .line 344
    iget v15, v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 345
    if-eq v15, v13, :cond_11

    .line 347
    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 349
    check-cast v13, Ljava/lang/Integer;

    .line 351
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 353
    move-result v13

    .line 356
    if-ne v15, v13, :cond_b

    .line 357
    goto/16 :goto_6

    .line 359
    :cond_b
    iget v10, v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 361
    if-eq v10, v14, :cond_d

    .line 363
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 365
    check-cast v13, Ljava/lang/Integer;

    .line 367
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 369
    move-result v13

    .line 372
    if-eq v10, v13, :cond_c

    .line 373
    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 375
    check-cast v13, Ljava/lang/Integer;

    .line 377
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 379
    move-result v13

    .line 382
    if-ne v10, v13, :cond_d

    .line 383
    :cond_c
    move v15, v10

    .line 385
    goto/16 :goto_6

    .line 386
    :cond_d
    if-eq v15, v8, :cond_11

    .line 388
    const/4 v13, 0x7

    .line 390
    if-eq v15, v13, :cond_11

    .line 391
    if-ne v15, v3, :cond_e

    .line 393
    goto :goto_6

    .line 395
    :cond_e
    if-eqz v7, :cond_1e

    .line 396
    const-string v3, "Given tag ("

    .line 398
    const-string v5, ") value didn\'t match with one of expected formats: "

    .line 400
    invoke-static {v3, v1, v5}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    move-result-object v3

    .line 405
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 406
    aget-object v8, v5, v15

    .line 408
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v8, ""

    .line 413
    const-string v11, ", "

    .line 415
    if-ne v10, v14, :cond_f

    .line 417
    move-object v10, v8

    .line 419
    goto :goto_4

    .line 420
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    .line 421
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    aget-object v10, v5, v10

    .line 426
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    move-result-object v10

    .line 434
    :goto_4
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v10, " (guess: "

    .line 438
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v10, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 443
    check-cast v10, Ljava/lang/Integer;

    .line 445
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 447
    move-result v10

    .line 450
    aget-object v10, v5, v10

    .line 451
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v10, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 456
    check-cast v10, Ljava/lang/Integer;

    .line 458
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 460
    move-result v10

    .line 463
    if-ne v10, v14, :cond_10

    .line 464
    goto :goto_5

    .line 466
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    .line 467
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    iget-object v10, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 472
    check-cast v10, Ljava/lang/Integer;

    .line 474
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 476
    move-result v10

    .line 479
    aget-object v5, v5, v10

    .line 480
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    move-result-object v8

    .line 488
    :goto_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v5, ")"

    .line 492
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    move-result-object v3

    .line 500
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    goto :goto_9

    .line 504
    :cond_11
    :goto_6
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 505
    const-string v8, ","

    .line 507
    packed-switch v15, :pswitch_data_0

    .line 509
    :pswitch_0
    move-object/from16 v16, v6

    .line 512
    move/from16 p2, v7

    .line 514
    const/4 v6, 0x1

    .line 516
    if-eqz p2, :cond_1d

    .line 517
    const-string v3, "Data format isn\'t one of expected formats: "

    .line 519
    move-object/from16 v7, v16

    .line 521
    invoke-static {v3, v15, v7}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 523
    goto/16 :goto_13

    .line 526
    :pswitch_1
    invoke-virtual {v2, v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 528
    move-result-object v8

    .line 531
    array-length v10, v8

    .line 532
    new-array v12, v10, [D

    .line 533
    move v13, v5

    .line 535
    :goto_7
    array-length v14, v8

    .line 536
    if-ge v13, v14, :cond_12

    .line 537
    aget-object v14, v8, v13

    .line 539
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 541
    move-result-wide v14

    .line 544
    aput-wide v14, v12, v13

    .line 545
    add-int/lit8 v13, v13, 0x1

    .line 547
    goto :goto_7

    .line 549
    :cond_12
    aget-object v8, v11, v4

    .line 550
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 552
    const/16 v13, 0xc

    .line 554
    aget v3, v3, v13

    .line 556
    mul-int/2addr v3, v10

    .line 558
    new-array v3, v3, [B

    .line 559
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 561
    move-result-object v3

    .line 564
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 565
    :goto_8
    if-ge v5, v10, :cond_13

    .line 568
    aget-wide v14, v12, v5

    .line 570
    invoke-virtual {v3, v14, v15}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 572
    add-int/lit8 v5, v5, 0x1

    .line 575
    goto :goto_8

    .line 577
    :cond_13
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 578
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 580
    move-result-object v3

    .line 583
    invoke-direct {v5, v3, v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    .line 584
    invoke-virtual {v8, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :goto_9
    move-object/from16 v16, v6

    .line 590
    move/from16 p2, v7

    .line 592
    goto/16 :goto_11

    .line 594
    :pswitch_2
    invoke-virtual {v2, v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 596
    move-result-object v8

    .line 599
    array-length v10, v8

    .line 600
    new-array v12, v10, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 601
    move v13, v5

    .line 603
    :goto_a
    array-length v15, v8

    .line 604
    if-ge v5, v15, :cond_14

    .line 605
    aget-object v15, v8, v5

    .line 607
    invoke-virtual {v15, v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 609
    move-result-object v14

    .line 612
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 613
    aget-object v13, v14, v13

    .line 615
    move-object/from16 v16, v6

    .line 617
    move/from16 p2, v7

    .line 619
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 621
    move-result-wide v6

    .line 624
    double-to-long v6, v6

    .line 625
    const/4 v13, 0x1

    .line 626
    aget-object v13, v14, v13

    .line 627
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 629
    move-result-wide v13

    .line 632
    double-to-long v13, v13

    .line 633
    invoke-direct {v15, v6, v7, v13, v14}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    .line 634
    aput-object v15, v12, v5

    .line 637
    add-int/lit8 v5, v5, 0x1

    .line 639
    const/4 v13, 0x0

    .line 641
    const/4 v14, -0x1

    .line 642
    move/from16 v7, p2

    .line 643
    move-object/from16 v6, v16

    .line 645
    goto :goto_a

    .line 647
    :cond_14
    move-object/from16 v16, v6

    .line 648
    move/from16 p2, v7

    .line 650
    aget-object v5, v11, v4

    .line 652
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 654
    const/16 v7, 0xa

    .line 656
    aget v3, v3, v7

    .line 658
    mul-int/2addr v3, v10

    .line 660
    new-array v3, v3, [B

    .line 661
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 663
    move-result-object v3

    .line 666
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 667
    const/4 v6, 0x0

    .line 670
    :goto_b
    if-ge v6, v10, :cond_15

    .line 671
    aget-object v8, v12, v6

    .line 673
    iget-wide v13, v8, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 675
    long-to-int v11, v13

    .line 677
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 678
    iget-wide v13, v8, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 681
    long-to-int v8, v13

    .line 683
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 684
    add-int/lit8 v6, v6, 0x1

    .line 687
    goto :goto_b

    .line 689
    :cond_15
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 690
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 692
    move-result-object v3

    .line 695
    invoke-direct {v6, v3, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    .line 696
    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    goto/16 :goto_11

    .line 702
    :pswitch_3
    move-object/from16 v16, v6

    .line 704
    move/from16 p2, v7

    .line 706
    invoke-virtual {v2, v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 708
    move-result-object v5

    .line 711
    array-length v6, v5

    .line 712
    new-array v7, v6, [I

    .line 713
    const/4 v8, 0x0

    .line 715
    :goto_c
    array-length v10, v5

    .line 716
    if-ge v8, v10, :cond_16

    .line 717
    aget-object v10, v5, v8

    .line 719
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 721
    move-result v10

    .line 724
    aput v10, v7, v8

    .line 725
    add-int/lit8 v8, v8, 0x1

    .line 727
    goto :goto_c

    .line 729
    :cond_16
    aget-object v5, v11, v4

    .line 730
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 732
    const/16 v10, 0x9

    .line 734
    aget v3, v3, v10

    .line 736
    mul-int/2addr v3, v6

    .line 738
    new-array v3, v3, [B

    .line 739
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 741
    move-result-object v3

    .line 744
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 745
    const/4 v8, 0x0

    .line 748
    :goto_d
    if-ge v8, v6, :cond_17

    .line 749
    aget v11, v7, v8

    .line 751
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 753
    add-int/lit8 v8, v8, 0x1

    .line 756
    goto :goto_d

    .line 758
    :cond_17
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 759
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 761
    move-result-object v3

    .line 764
    invoke-direct {v7, v3, v10, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    .line 765
    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    goto/16 :goto_11

    .line 771
    :pswitch_4
    move-object/from16 v16, v6

    .line 773
    move/from16 p2, v7

    .line 775
    invoke-virtual {v2, v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 777
    move-result-object v3

    .line 780
    array-length v5, v3

    .line 781
    new-array v5, v5, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 782
    const/4 v6, 0x0

    .line 784
    :goto_e
    array-length v7, v3

    .line 785
    if-ge v6, v7, :cond_18

    .line 786
    aget-object v7, v3, v6

    .line 788
    invoke-virtual {v7, v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 790
    move-result-object v7

    .line 793
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 794
    const/4 v10, 0x0

    .line 796
    aget-object v10, v7, v10

    .line 797
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 799
    move-result-wide v12

    .line 802
    double-to-long v12, v12

    .line 803
    const/4 v10, 0x1

    .line 804
    aget-object v7, v7, v10

    .line 805
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 807
    move-result-wide v14

    .line 810
    double-to-long v14, v14

    .line 811
    invoke-direct {v8, v12, v13, v14, v15}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    .line 812
    aput-object v8, v5, v6

    .line 815
    add-int/lit8 v6, v6, 0x1

    .line 817
    const/4 v14, -0x1

    .line 819
    goto :goto_e

    .line 820
    :cond_18
    aget-object v3, v11, v4

    .line 821
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 823
    invoke-static {v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 825
    move-result-object v5

    .line 828
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    goto :goto_11

    .line 832
    :pswitch_5
    move-object/from16 v16, v6

    .line 833
    move/from16 p2, v7

    .line 835
    invoke-virtual {v2, v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 837
    move-result-object v3

    .line 840
    array-length v5, v3

    .line 841
    new-array v5, v5, [J

    .line 842
    const/4 v6, 0x0

    .line 844
    :goto_f
    array-length v7, v3

    .line 845
    if-ge v6, v7, :cond_19

    .line 846
    aget-object v7, v3, v6

    .line 848
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 850
    move-result-wide v7

    .line 853
    aput-wide v7, v5, v6

    .line 854
    add-int/lit8 v6, v6, 0x1

    .line 856
    goto :goto_f

    .line 858
    :cond_19
    aget-object v3, v11, v4

    .line 859
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 861
    invoke-static {v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 863
    move-result-object v5

    .line 866
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    goto :goto_11

    .line 870
    :pswitch_6
    move-object/from16 v16, v6

    .line 871
    move/from16 p2, v7

    .line 873
    invoke-virtual {v2, v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 875
    move-result-object v3

    .line 878
    array-length v5, v3

    .line 879
    new-array v5, v5, [I

    .line 880
    const/4 v6, 0x0

    .line 882
    :goto_10
    array-length v7, v3

    .line 883
    if-ge v6, v7, :cond_1a

    .line 884
    aget-object v7, v3, v6

    .line 886
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 888
    move-result v7

    .line 891
    aput v7, v5, v6

    .line 892
    add-int/lit8 v6, v6, 0x1

    .line 894
    goto :goto_10

    .line 896
    :cond_1a
    aget-object v3, v11, v4

    .line 897
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 899
    invoke-static {v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 901
    move-result-object v5

    .line 904
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    goto :goto_11

    .line 908
    :pswitch_7
    move-object/from16 v16, v6

    .line 909
    move/from16 p2, v7

    .line 911
    aget-object v3, v11, v4

    .line 913
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 915
    move-result-object v5

    .line 918
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :goto_11
    const/4 v3, 0x0

    .line 922
    const/4 v5, 0x1

    .line 923
    move v8, v5

    .line 924
    move-object/from16 v7, v16

    .line 925
    move v5, v3

    .line 927
    goto :goto_15

    .line 928
    :pswitch_8
    move-object/from16 v16, v6

    .line 929
    move/from16 p2, v7

    .line 931
    aget-object v3, v11, v4

    .line 933
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 935
    move-result v5

    .line 938
    const/4 v6, 0x1

    .line 939
    if-ne v5, v6, :cond_1b

    .line 940
    const/4 v5, 0x0

    .line 942
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 943
    move-result v7

    .line 946
    const/16 v8, 0x30

    .line 947
    if-lt v7, v8, :cond_1c

    .line 949
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 951
    move-result v7

    .line 954
    const/16 v10, 0x31

    .line 955
    if-gt v7, v10, :cond_1c

    .line 957
    new-array v7, v6, [B

    .line 959
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 961
    move-result v10

    .line 964
    sub-int/2addr v10, v8

    .line 965
    int-to-byte v8, v10

    .line 966
    aput-byte v8, v7, v5

    .line 967
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 969
    invoke-direct {v8, v7, v6, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    .line 971
    goto :goto_12

    .line 974
    :cond_1b
    const/4 v5, 0x0

    .line 975
    :cond_1c
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 976
    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 978
    move-result-object v7

    .line 981
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 982
    array-length v10, v7

    .line 984
    invoke-direct {v8, v7, v6, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    .line 985
    :goto_12
    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    :cond_1d
    move-object/from16 v7, v16

    .line 991
    :goto_13
    move v8, v6

    .line 993
    goto :goto_15

    .line 994
    :cond_1e
    :goto_14
    move/from16 p2, v7

    .line 995
    move-object v7, v6

    .line 997
    :goto_15
    add-int/lit8 v4, v4, 0x1

    .line 998
    const/4 v3, 0x2

    .line 1000
    move-object v6, v7

    .line 1001
    move/from16 v7, p2

    .line 1002
    goto/16 :goto_3

    .line 1004
    :cond_1f
    return-void

    .line 1006
    nop

    .line 1007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 1008
.end method

.method public final setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    const-string v3, "Compression"

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 17
    const/4 v4, 0x6

    .line 19
    if-eqz v3, :cond_11

    .line 20
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    invoke-virtual {v3, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    move-result v3

    .line 27
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 28
    const/4 v5, 0x1

    .line 30
    if-eq v3, v5, :cond_1

    .line 31
    if-eq v3, v4, :cond_0

    .line 33
    const/4 v6, 0x7

    .line 35
    if-eq v3, v6, :cond_1

    .line 36
    goto/16 :goto_7

    .line 38
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 40
    goto/16 :goto_7

    .line 43
    :cond_1
    const-string v3, "BitsPerSample"

    .line 45
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 50
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 51
    const-string v6, "ExifInterface"

    .line 53
    const/4 v7, 0x0

    .line 55
    if-eqz v3, :cond_5

    .line 56
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 58
    invoke-virtual {v3, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 63
    check-cast v3, [I

    .line 64
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 66
    invoke-static {v8, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 68
    move-result v9

    .line 71
    if-eqz v9, :cond_2

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    iget v9, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 75
    const/4 v10, 0x3

    .line 77
    if-ne v9, v10, :cond_5

    .line 78
    const-string v9, "PhotometricInterpretation"

    .line 80
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v9

    .line 85
    check-cast v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 86
    if-eqz v9, :cond_5

    .line 88
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 90
    invoke-virtual {v9, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 92
    move-result v9

    .line 95
    if-ne v9, v5, :cond_3

    .line 96
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 98
    invoke-static {v3, v10}, Ljava/util/Arrays;->equals([I[I)Z

    .line 100
    move-result v10

    .line 103
    if-nez v10, :cond_4

    .line 104
    :cond_3
    if-ne v9, v4, :cond_5

    .line 106
    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([I[I)Z

    .line 108
    move-result v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    :cond_4
    :goto_0
    move v3, v5

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 116
    if-eqz v3, :cond_6

    .line 118
    const-string v3, "Unsupported data type value"

    .line 120
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_6
    move v3, v7

    .line 125
    :goto_1
    if-eqz v3, :cond_12

    .line 126
    const-string v3, " bytes."

    .line 128
    const-string v4, "StripOffsets"

    .line 130
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v4

    .line 135
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 136
    const-string v8, "StripByteCounts"

    .line 138
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-result-object v2

    .line 143
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 144
    if-eqz v4, :cond_12

    .line 146
    if-eqz v2, :cond_12

    .line 148
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 150
    invoke-virtual {v4, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 152
    move-result-object v4

    .line 155
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    .line 156
    move-result-object v4

    .line 159
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 160
    invoke-virtual {v2, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 162
    move-result-object v2

    .line 165
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    .line 166
    move-result-object v2

    .line 169
    if-eqz v4, :cond_10

    .line 170
    array-length v8, v4

    .line 172
    if-nez v8, :cond_7

    .line 173
    goto/16 :goto_6

    .line 175
    :cond_7
    if-eqz v2, :cond_f

    .line 177
    array-length v8, v2

    .line 179
    if-nez v8, :cond_8

    .line 180
    goto/16 :goto_5

    .line 182
    :cond_8
    array-length v8, v4

    .line 184
    array-length v9, v2

    .line 185
    if-eq v8, v9, :cond_9

    .line 186
    const-string/jumbo v0, "stripOffsets and stripByteCounts should have same length."

    .line 188
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto/16 :goto_7

    .line 194
    :cond_9
    array-length v8, v2

    .line 196
    const-wide/16 v9, 0x0

    .line 197
    move v11, v7

    .line 199
    :goto_2
    if-ge v11, v8, :cond_a

    .line 200
    aget-wide v12, v2, v11

    .line 202
    add-long/2addr v9, v12

    .line 204
    add-int/lit8 v11, v11, 0x1

    .line 205
    goto :goto_2

    .line 207
    :cond_a
    long-to-int v8, v9

    .line 208
    new-array v9, v8, [B

    .line 209
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 211
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 213
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 215
    move v10, v7

    .line 217
    move v11, v10

    .line 218
    move v12, v11

    .line 219
    :goto_3
    array-length v13, v4

    .line 220
    if-ge v10, v13, :cond_e

    .line 221
    aget-wide v13, v4, v10

    .line 223
    long-to-int v13, v13

    .line 225
    aget-wide v14, v2, v10

    .line 226
    long-to-int v14, v14

    .line 228
    array-length v15, v4

    .line 229
    sub-int/2addr v15, v5

    .line 230
    if-ge v10, v15, :cond_b

    .line 231
    add-int v15, v13, v14

    .line 233
    move-object/from16 v16, v6

    .line 235
    int-to-long v5, v15

    .line 237
    add-int/lit8 v15, v10, 0x1

    .line 238
    aget-wide v17, v4, v15

    .line 240
    cmp-long v5, v5, v17

    .line 242
    if-eqz v5, :cond_c

    .line 244
    iput-boolean v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 246
    goto :goto_4

    .line 248
    :cond_b
    move-object/from16 v16, v6

    .line 249
    :cond_c
    :goto_4
    sub-int/2addr v13, v11

    .line 251
    if-gez v13, :cond_d

    .line 252
    const-string v0, "Invalid strip offset value"

    .line 254
    move-object/from16 v5, v16

    .line 256
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    goto :goto_7

    .line 261
    :cond_d
    move-object/from16 v5, v16

    .line 262
    :try_start_0
    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    add-int/2addr v11, v13

    .line 267
    new-array v6, v14, [B

    .line 268
    :try_start_1
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    add-int/2addr v11, v14

    .line 273
    invoke-static {v6, v7, v9, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    add-int/2addr v12, v14

    .line 277
    add-int/lit8 v10, v10, 0x1

    .line 278
    move-object v6, v5

    .line 280
    const/4 v5, 0x1

    .line 281
    goto :goto_3

    .line 282
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    const-string v1, "Failed to read "

    .line 285
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 299
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    goto :goto_7

    .line 303
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "Failed to skip "

    .line 306
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v0

    .line 320
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    goto :goto_7

    .line 324
    :cond_e
    iput-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 325
    iget-boolean v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 327
    if-eqz v1, :cond_12

    .line 329
    aget-wide v1, v4, v7

    .line 331
    long-to-int v1, v1

    .line 333
    iput v1, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 334
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 336
    goto :goto_7

    .line 338
    :cond_f
    :goto_5
    move-object v5, v6

    .line 339
    const-string/jumbo v0, "stripByteCounts should not be null or have zero length."

    .line 340
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    goto :goto_7

    .line 346
    :cond_10
    :goto_6
    move-object v5, v6

    .line 347
    const-string/jumbo v0, "stripOffsets should not be null or have zero length."

    .line 348
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    goto :goto_7

    .line 354
    :cond_11
    iput v4, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 355
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 357
    :cond_12
    :goto_7
    return-void
    .line 360
.end method

.method public final swapBasedOnImageSize(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    aget-object v1, v0, p1

    .line 4
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    move-result v1

    .line 9
    const-string v2, "ExifInterface"

    .line 10
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 12
    if-nez v1, :cond_6

    .line 14
    aget-object v1, v0, p2

    .line 16
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    goto :goto_3

    .line 24
    :cond_0
    aget-object v1, v0, p1

    .line 25
    const-string v4, "ImageLength"

    .line 27
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 33
    aget-object v5, v0, p1

    .line 35
    const-string v6, "ImageWidth"

    .line 37
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v5

    .line 42
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 43
    aget-object v7, v0, p2

    .line 45
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 51
    aget-object v7, v0, p2

    .line 53
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 58
    check-cast v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 59
    if-eqz v1, :cond_4

    .line 61
    if-nez v5, :cond_1

    .line 63
    goto :goto_1

    .line 65
    :cond_1
    if-eqz v4, :cond_3

    .line 66
    if-nez v6, :cond_2

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 71
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 73
    move-result v1

    .line 76
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 77
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 79
    move-result v2

    .line 82
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 83
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 85
    move-result v3

    .line 88
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 89
    invoke-virtual {v6, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 91
    move-result p0

    .line 94
    if-ge v1, v3, :cond_5

    .line 95
    if-ge v2, p0, :cond_5

    .line 97
    aget-object p0, v0, p1

    .line 99
    aget-object v1, v0, p2

    .line 101
    aput-object v1, v0, p1

    .line 103
    aput-object p0, v0, p2

    .line 105
    goto :goto_2

    .line 107
    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    .line 108
    const-string p0, "Second image does not contain valid size information"

    .line 110
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    goto :goto_2

    .line 115
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 116
    const-string p0, "First image does not contain valid size information"

    .line 118
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_5
    :goto_2
    return-void

    .line 123
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 124
    const-string p0, "Cannot perform swap since only one image data exists"

    .line 126
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_7
    return-void
    .line 131
.end method

.method public final updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    aget-object v1, v0, p2

    .line 4
    const-string v2, "DefaultCropSize"

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 12
    aget-object v2, v0, p2

    .line 14
    const-string v3, "SensorTopBorder"

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 22
    aget-object v3, v0, p2

    .line 24
    const-string v4, "SensorLeftBorder"

    .line 26
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 31
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 32
    aget-object v4, v0, p2

    .line 34
    const-string v5, "SensorBottomBorder"

    .line 36
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 42
    aget-object v5, v0, p2

    .line 44
    const-string v6, "SensorRightBorder"

    .line 46
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 51
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 52
    const-string v6, "ImageWidth"

    .line 54
    const-string v7, "ImageLength"

    .line 56
    if-eqz v1, :cond_5

    .line 58
    iget p1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 60
    const/4 v2, 0x5

    .line 62
    const/4 v3, 0x1

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x2

    .line 65
    const-string v8, "Invalid crop size values. cropSize="

    .line 66
    const-string v9, "ExifInterface"

    .line 68
    if-ne p1, v2, :cond_2

    .line 70
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 72
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 77
    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 78
    if-eqz p1, :cond_1

    .line 80
    array-length v1, p1

    .line 82
    if-eq v1, v5, :cond_0

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    aget-object v1, p1, v4

    .line 86
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 88
    filled-new-array {v1}, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 90
    move-result-object v1

    .line 93
    invoke-static {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 94
    move-result-object v1

    .line 97
    aget-object p1, p1, v3

    .line 98
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 100
    filled-new-array {p1}, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 102
    move-result-object p1

    .line 105
    invoke-static {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 106
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 126
    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 131
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 133
    move-result-object p1

    .line 136
    check-cast p1, [I

    .line 137
    if-eqz p1, :cond_4

    .line 139
    array-length v1, p1

    .line 141
    if-eq v1, v5, :cond_3

    .line 142
    goto :goto_2

    .line 144
    :cond_3
    aget v1, p1, v4

    .line 145
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 147
    invoke-static {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 149
    move-result-object v1

    .line 152
    aget p1, p1, v3

    .line 153
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 155
    invoke-static {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 157
    move-result-object p0

    .line 160
    :goto_1
    aget-object p1, v0, p2

    .line 161
    invoke-virtual {p1, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    aget-object p1, v0, p2

    .line 166
    invoke-virtual {p1, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    goto/16 :goto_3

    .line 171
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 188
    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 192
    :cond_5
    if-eqz v2, :cond_6

    .line 193
    if-eqz v3, :cond_6

    .line 195
    if-eqz v4, :cond_6

    .line 197
    if-eqz v5, :cond_6

    .line 199
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 201
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 203
    move-result p1

    .line 206
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 207
    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 209
    move-result v1

    .line 212
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 213
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 215
    move-result v2

    .line 218
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 219
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 221
    move-result v3

    .line 224
    if-le v1, p1, :cond_8

    .line 225
    if-le v2, v3, :cond_8

    .line 227
    sub-int/2addr v1, p1

    .line 229
    sub-int/2addr v2, v3

    .line 230
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 231
    invoke-static {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 233
    move-result-object p1

    .line 236
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 237
    invoke-static {v2, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 239
    move-result-object p0

    .line 242
    aget-object v1, v0, p2

    .line 243
    invoke-virtual {v1, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    aget-object p1, v0, p2

    .line 248
    invoke-virtual {p1, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    goto :goto_3

    .line 253
    :cond_6
    aget-object v1, v0, p2

    .line 254
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    move-result-object v1

    .line 259
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 260
    aget-object v2, v0, p2

    .line 262
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-result-object v2

    .line 267
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 268
    if-eqz v1, :cond_7

    .line 270
    if-nez v2, :cond_8

    .line 272
    :cond_7
    aget-object v1, v0, p2

    .line 274
    const-string v2, "JPEGInterchangeFormat"

    .line 276
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    move-result-object v1

    .line 281
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 282
    aget-object v0, v0, p2

    .line 284
    const-string v2, "JPEGInterchangeFormatLength"

    .line 286
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    move-result-object v0

    .line 291
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 292
    if-eqz v1, :cond_8

    .line 294
    if-eqz v0, :cond_8

    .line 296
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 298
    invoke-virtual {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 300
    move-result v0

    .line 303
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 304
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 306
    move-result v1

    .line 309
    int-to-long v2, v0

    .line 310
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 311
    new-array v1, v1, [B

    .line 314
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 316
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 319
    invoke-direct {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 321
    invoke-virtual {p0, p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 324
    :cond_8
    :goto_3
    return-void
    .line 327
.end method

.method public final validateImages()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4
    const/4 v2, 0x4

    .line 7
    invoke-virtual {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 8
    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 11
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 14
    const/4 v4, 0x1

    .line 16
    aget-object v5, v3, v4

    .line 17
    const-string v6, "PixelXDimension"

    .line 19
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v5

    .line 24
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 25
    aget-object v4, v3, v4

    .line 27
    const-string v6, "PixelYDimension"

    .line 29
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 35
    const-string v6, "ImageLength"

    .line 37
    const-string v7, "ImageWidth"

    .line 39
    if-eqz v5, :cond_0

    .line 41
    if-eqz v4, :cond_0

    .line 43
    aget-object v8, v3, v0

    .line 45
    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    aget-object v5, v3, v0

    .line 50
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    aget-object v4, v3, v2

    .line 55
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 57
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    aget-object v4, v3, v1

    .line 63
    invoke-virtual {p0, v4}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    .line 65
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    aget-object v4, v3, v1

    .line 71
    aput-object v4, v3, v2

    .line 73
    new-instance v4, Ljava/util/HashMap;

    .line 75
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    aput-object v4, v3, v1

    .line 80
    :cond_1
    aget-object v3, v3, v2

    .line 82
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    .line 84
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    const-string v3, "ExifInterface"

    .line 90
    const-string v4, "No image meets the size requirements of a thumbnail image."

    .line 92
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    const-string v3, "ThumbnailOrientation"

    .line 97
    const-string v4, "Orientation"

    .line 99
    invoke-virtual {p0, v3, v4, v0}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    const-string v5, "ThumbnailImageLength"

    .line 104
    invoke-virtual {p0, v5, v6, v0}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    const-string v8, "ThumbnailImageWidth"

    .line 109
    invoke-virtual {p0, v8, v7, v0}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p0, v3, v4, v1}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    invoke-virtual {p0, v5, v6, v1}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    invoke-virtual {p0, v8, v7, v1}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    invoke-virtual {p0, v4, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    invoke-virtual {p0, v6, v5, v2}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    invoke-virtual {p0, v7, v8, v2}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    return-void
    .line 132
.end method

.method public final writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V
    .locals 14

    .line 1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2
    array-length v1, v0

    .line 4
    new-array v1, v1, [I

    .line 5
    array-length v2, v0

    .line 7
    new-array v2, v2, [I

    .line 8
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 10
    array-length v4, v3

    .line 12
    const/4 v5, 0x0

    .line 13
    move v6, v5

    .line 14
    :goto_0
    if-ge v6, v4, :cond_0

    .line 15
    aget-object v7, v3, v6

    .line 17
    iget-object v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, v7}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 21
    add-int/lit8 v6, v6, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 27
    const-string v6, "StripByteCounts"

    .line 29
    const-string v7, "JPEGInterchangeFormatLength"

    .line 31
    const-string v8, "StripOffsets"

    .line 33
    const-string v9, "JPEGInterchangeFormat"

    .line 35
    if-eqz v4, :cond_2

    .line 37
    iget-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 39
    if-eqz v4, :cond_1

    .line 41
    invoke-virtual {p0, v8}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v6}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0, v9}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v7}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 53
    :cond_2
    :goto_1
    move v4, v5

    .line 56
    :goto_2
    array-length v10, v0

    .line 57
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 58
    if-ge v4, v10, :cond_5

    .line 60
    aget-object v10, v11, v4

    .line 62
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 64
    move-result-object v10

    .line 67
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v10

    .line 71
    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v11

    .line 75
    if-eqz v11, :cond_4

    .line 76
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v11

    .line 81
    check-cast v11, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    move-result-object v11

    .line 87
    if-nez v11, :cond_3

    .line 88
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 90
    goto :goto_3

    .line 93
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 94
    goto :goto_2

    .line 96
    :cond_5
    const/4 v4, 0x1

    .line 97
    aget-object v10, v11, v4

    .line 98
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    .line 100
    move-result v10

    .line 103
    const-wide/16 v12, 0x0

    .line 104
    if-nez v10, :cond_6

    .line 106
    aget-object v5, v11, v5

    .line 108
    aget-object v4, v3, v4

    .line 110
    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 112
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 114
    invoke-static {v12, v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 116
    move-result-object v10

    .line 119
    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_6
    const/4 v4, 0x2

    .line 123
    aget-object v5, v11, v4

    .line 124
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 126
    move-result v5

    .line 129
    if-nez v5, :cond_7

    .line 130
    const/4 v5, 0x0

    .line 132
    aget-object v5, v11, v5

    .line 133
    aget-object v4, v3, v4

    .line 135
    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 137
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 139
    invoke-static {v12, v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 141
    move-result-object v10

    .line 144
    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_7
    const/4 v4, 0x3

    .line 148
    aget-object v5, v11, v4

    .line 149
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 151
    move-result v5

    .line 154
    if-nez v5, :cond_8

    .line 155
    const/4 v5, 0x1

    .line 157
    aget-object v5, v11, v5

    .line 158
    aget-object v4, v3, v4

    .line 160
    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 162
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 164
    invoke-static {v12, v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 166
    move-result-object v10

    .line 169
    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_8
    iget-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 173
    const/4 v5, 0x4

    .line 175
    if-eqz v4, :cond_a

    .line 176
    iget-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 178
    if-eqz v4, :cond_9

    .line 180
    aget-object v4, v11, v5

    .line 182
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 184
    const/4 v10, 0x0

    .line 186
    invoke-static {v10, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 187
    move-result-object v7

    .line 190
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    aget-object v4, v11, v5

    .line 194
    iget v7, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 196
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 198
    invoke-static {v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 200
    move-result-object v7

    .line 203
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    goto :goto_4

    .line 207
    :cond_9
    aget-object v4, v11, v5

    .line 208
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 210
    invoke-static {v12, v13, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 212
    move-result-object v6

    .line 215
    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    aget-object v4, v11, v5

    .line 219
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 221
    int-to-long v12, v6

    .line 223
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 224
    invoke-static {v12, v13, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 226
    move-result-object v6

    .line 229
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_a
    :goto_4
    const/4 v4, 0x0

    .line 233
    :goto_5
    array-length v6, v0

    .line 234
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 235
    if-ge v4, v6, :cond_d

    .line 237
    aget-object v6, v11, v4

    .line 239
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 241
    move-result-object v6

    .line 244
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 245
    move-result-object v6

    .line 248
    const/4 v10, 0x0

    .line 249
    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    move-result v12

    .line 253
    if-eqz v12, :cond_c

    .line 254
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    move-result-object v12

    .line 259
    check-cast v12, Ljava/util/Map$Entry;

    .line 260
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 262
    move-result-object v12

    .line 265
    check-cast v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 266
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    iget v13, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 271
    aget v13, v7, v13

    .line 273
    iget v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 275
    mul-int/2addr v13, v12

    .line 277
    if-le v13, v5, :cond_b

    .line 278
    add-int/2addr v10, v13

    .line 280
    goto :goto_6

    .line 281
    :cond_c
    aget v6, v2, v4

    .line 282
    add-int/2addr v6, v10

    .line 284
    aput v6, v2, v4

    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 287
    goto :goto_5

    .line 289
    :cond_d
    const/16 v4, 0x8

    .line 290
    const/4 v6, 0x0

    .line 292
    :goto_7
    array-length v10, v0

    .line 293
    if-ge v6, v10, :cond_f

    .line 294
    aget-object v10, v11, v6

    .line 296
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    .line 298
    move-result v10

    .line 301
    if-nez v10, :cond_e

    .line 302
    aput v4, v1, v6

    .line 304
    aget-object v10, v11, v6

    .line 306
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 308
    move-result v10

    .line 311
    mul-int/lit8 v10, v10, 0xc

    .line 312
    add-int/lit8 v10, v10, 0x2

    .line 314
    add-int/2addr v10, v5

    .line 316
    aget v12, v2, v6

    .line 317
    add-int/2addr v10, v12

    .line 319
    add-int/2addr v10, v4

    .line 320
    move v4, v10

    .line 321
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 322
    goto :goto_7

    .line 324
    :cond_f
    iget-boolean v6, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 325
    if-eqz v6, :cond_11

    .line 327
    iget-boolean v6, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 329
    if-eqz v6, :cond_10

    .line 331
    aget-object v6, v11, v5

    .line 333
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 335
    invoke-static {v4, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 337
    move-result-object v9

    .line 340
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    goto :goto_8

    .line 344
    :cond_10
    aget-object v6, v11, v5

    .line 345
    int-to-long v12, v4

    .line 347
    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 348
    invoke-static {v12, v13, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 350
    move-result-object v8

    .line 353
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :goto_8
    iput v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 357
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 359
    add-int/2addr v4, v6

    .line 361
    :cond_11
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 362
    if-ne v6, v5, :cond_12

    .line 364
    add-int/lit8 v4, v4, 0x8

    .line 366
    :cond_12
    sget-boolean v6, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 368
    if-eqz v6, :cond_13

    .line 370
    const/4 v6, 0x0

    .line 372
    :goto_9
    array-length v8, v0

    .line 373
    if-ge v6, v8, :cond_13

    .line 374
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    move-result-object v8

    .line 379
    aget v9, v1, v6

    .line 380
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    move-result-object v9

    .line 385
    aget-object v10, v11, v6

    .line 386
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 388
    move-result v10

    .line 391
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    move-result-object v10

    .line 395
    aget v12, v2, v6

    .line 396
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    move-result-object v12

    .line 401
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    move-result-object v13

    .line 405
    filled-new-array {v8, v9, v10, v12, v13}, [Ljava/lang/Object;

    .line 406
    move-result-object v8

    .line 409
    const-string v9, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    .line 410
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 412
    move-result-object v8

    .line 415
    const-string v9, "ExifInterface"

    .line 416
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    add-int/lit8 v6, v6, 0x1

    .line 421
    goto :goto_9

    .line 423
    :cond_13
    const/4 v2, 0x1

    .line 424
    aget-object v6, v11, v2

    .line 425
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 427
    move-result v6

    .line 430
    if-nez v6, :cond_14

    .line 431
    const/4 v6, 0x0

    .line 433
    aget-object v6, v11, v6

    .line 434
    aget-object v8, v3, v2

    .line 436
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 438
    aget v2, v1, v2

    .line 440
    int-to-long v9, v2

    .line 442
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 443
    invoke-static {v9, v10, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 445
    move-result-object v2

    .line 448
    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_14
    const/4 v2, 0x2

    .line 452
    aget-object v6, v11, v2

    .line 453
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 455
    move-result v6

    .line 458
    if-nez v6, :cond_15

    .line 459
    const/4 v6, 0x0

    .line 461
    aget-object v6, v11, v6

    .line 462
    aget-object v8, v3, v2

    .line 464
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 466
    aget v2, v1, v2

    .line 468
    int-to-long v9, v2

    .line 470
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 471
    invoke-static {v9, v10, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 473
    move-result-object v2

    .line 476
    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_15
    const/4 v2, 0x3

    .line 480
    aget-object v6, v11, v2

    .line 481
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 483
    move-result v6

    .line 486
    if-nez v6, :cond_16

    .line 487
    const/4 v6, 0x1

    .line 489
    aget-object v6, v11, v6

    .line 490
    aget-object v3, v3, v2

    .line 492
    iget-object v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 494
    aget v2, v1, v2

    .line 496
    int-to-long v8, v2

    .line 498
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 499
    invoke-static {v8, v9, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 501
    move-result-object v2

    .line 504
    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_16
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 508
    const/16 v3, 0xe

    .line 510
    if-eq v2, v5, :cond_19

    .line 512
    const/16 v6, 0xd

    .line 514
    if-eq v2, v6, :cond_18

    .line 516
    if-eq v2, v3, :cond_17

    .line 518
    goto :goto_a

    .line 520
    :cond_17
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 521
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 523
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 526
    goto :goto_a

    .line 529
    :cond_18
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 530
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 533
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 535
    goto :goto_a

    .line 538
    :cond_19
    const v2, 0xffff

    .line 539
    if-gt v4, v2, :cond_24

    .line 542
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 544
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 547
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 549
    :goto_a
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 552
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 554
    if-ne v2, v6, :cond_1a

    .line 556
    const/16 v2, 0x4d4d

    .line 558
    goto :goto_b

    .line 560
    :cond_1a
    const/16 v2, 0x4949

    .line 561
    :goto_b
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 563
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 566
    iput-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 568
    const/16 v2, 0x2a

    .line 570
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 572
    const-wide/16 v8, 0x8

    .line 575
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 577
    const/4 v2, 0x0

    .line 580
    :goto_c
    array-length v6, v0

    .line 581
    if-ge v2, v6, :cond_21

    .line 582
    aget-object v6, v11, v2

    .line 584
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 586
    move-result v6

    .line 589
    if-nez v6, :cond_20

    .line 590
    aget-object v6, v11, v2

    .line 592
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    .line 594
    move-result v6

    .line 597
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 598
    aget v6, v1, v2

    .line 601
    add-int/lit8 v6, v6, 0x2

    .line 603
    aget-object v8, v11, v2

    .line 605
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    .line 607
    move-result v8

    .line 610
    mul-int/lit8 v8, v8, 0xc

    .line 611
    add-int/2addr v8, v6

    .line 613
    add-int/2addr v8, v5

    .line 614
    aget-object v6, v11, v2

    .line 615
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 617
    move-result-object v6

    .line 620
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 621
    move-result-object v6

    .line 624
    :cond_1b
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 625
    move-result v9

    .line 628
    if-eqz v9, :cond_1d

    .line 629
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 631
    move-result-object v9

    .line 634
    check-cast v9, Ljava/util/Map$Entry;

    .line 635
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 637
    aget-object v10, v10, v2

    .line 639
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 641
    move-result-object v12

    .line 644
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    move-result-object v10

    .line 648
    check-cast v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 649
    iget v10, v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 651
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 653
    move-result-object v9

    .line 656
    check-cast v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 657
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    iget v12, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 662
    aget v12, v7, v12

    .line 664
    iget v13, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 666
    mul-int/2addr v12, v13

    .line 668
    invoke-virtual {p1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 669
    iget v10, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 672
    invoke-virtual {p1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 674
    iget v10, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 677
    invoke-virtual {p1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 679
    if-le v12, v5, :cond_1c

    .line 682
    int-to-long v9, v8

    .line 684
    invoke-virtual {p1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 685
    add-int/2addr v8, v12

    .line 688
    goto :goto_d

    .line 689
    :cond_1c
    iget-object v9, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 690
    invoke-virtual {p1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 692
    if-ge v12, v5, :cond_1b

    .line 695
    :goto_e
    if-ge v12, v5, :cond_1b

    .line 697
    const/4 v9, 0x0

    .line 699
    invoke-virtual {p1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 700
    add-int/lit8 v12, v12, 0x1

    .line 703
    goto :goto_e

    .line 705
    :cond_1d
    if-nez v2, :cond_1e

    .line 706
    aget-object v6, v11, v5

    .line 708
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 710
    move-result v6

    .line 713
    if-nez v6, :cond_1e

    .line 714
    aget v6, v1, v5

    .line 716
    int-to-long v8, v6

    .line 718
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 719
    goto :goto_f

    .line 722
    :cond_1e
    const-wide/16 v8, 0x0

    .line 723
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 725
    :goto_f
    aget-object v6, v11, v2

    .line 728
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 730
    move-result-object v6

    .line 733
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 734
    move-result-object v6

    .line 737
    :cond_1f
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 738
    move-result v8

    .line 741
    if-eqz v8, :cond_20

    .line 742
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 744
    move-result-object v8

    .line 747
    check-cast v8, Ljava/util/Map$Entry;

    .line 748
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 750
    move-result-object v8

    .line 753
    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 754
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 756
    array-length v9, v8

    .line 758
    if-le v9, v5, :cond_1f

    .line 759
    array-length v9, v8

    .line 761
    const/4 v10, 0x0

    .line 762
    invoke-virtual {p1, v8, v10, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 763
    goto :goto_10

    .line 766
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 767
    goto/16 :goto_c

    .line 769
    :cond_21
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 771
    if-eqz v0, :cond_22

    .line 773
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    .line 775
    move-result-object v0

    .line 778
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 779
    :cond_22
    iget p0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 782
    if-ne p0, v3, :cond_23

    .line 784
    rem-int/lit8 v4, v4, 0x2

    .line 786
    const/4 p0, 0x1

    .line 788
    if-ne v4, p0, :cond_23

    .line 789
    const/4 p0, 0x0

    .line 791
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 792
    :cond_23
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 795
    iput-object p0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 797
    return-void

    .line 799
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 800
    const-string p1, "Size of exif data ("

    .line 802
    const-string v0, " bytes) exceeds the max size of a JPEG APP1 segment (65536 bytes)"

    .line 804
    invoke-static {p1, v4, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 806
    move-result-object p1

    .line 809
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 810
    throw p0
    .line 813
.end method
