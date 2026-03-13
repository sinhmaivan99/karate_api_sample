# Karate API Automation Sample

Dự án mẫu cho automation E2E API testing sử dụng Karate framework.

## Cấu trúc dự án

```
karate_api_sample/
├── src/
│   ├── main/
│   │   └── java/          # Code chính (nếu có)
│   │   └── resources/     # Resources chính
│   └── test/
│       ├── java/
│       │   └── com/example/
│       │       └── ExampleTest.java  # Test class
│       └── resources/
│           ├── karate-config.js      # Config global
│           ├── data/
│           │   └── users.json        # Test data
│           └── com/example/
│               ├── example.feature   # Feature file mẫu
│               └── user-management.feature  # Feature khác
├── target/                 # Build output
├── pom.xml                 # Maven config
└── README.md
```

## Chạy tests

```bash
mvn clean test
```

## Báo cáo

Sau khi chạy, mở file `target/karate-reports/karate-summary.html` trong browser để xem báo cáo.

## Config

- `karate-config.js`: Cấu hình global, baseUrl, env, etc.
- Có thể set env bằng: `mvn test -Dkarate.env=e2e`

## Thêm features mới

- Tạo file `.feature` trong `src/test/resources/com/example/`
- Viết scenarios theo Gherkin syntax
- Karate sẽ tự động chạy tất cả features trong package tương ứng với test class.